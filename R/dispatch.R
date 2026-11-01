# 重载分派（手写，不生成）
#
# 生成器为每个重载产出一个内部入口 .ropecv_<fn>__<k>，再产出一个 cv_<fn>：
#
#   cv_norm <- local({
#     .sigs <- list(
#       list(f = .ropecv_norm__0, p = c(src1 = "mat", normType = "int", mask = "mat"),
#            r = c(TRUE, FALSE, FALSE), s = "src1, normType = NORM_L2, mask = NULL"),
#       ...
#     )
#     function(...) .ropecv_pick("norm", .sigs, list(...))
#   })
#
# 分派规则：
#   1. 具名实参按名字对位，名字不在签名里就淘汰该重载；
#   2. 剩下的位置实参按顺序填还没被占用的形参；
#   3. 必需形参（生成时记下的 r 标记）必须都被填上；
#   4. 每个实参按 kind 打分，取总分最高者；平局取参数最少的（签名更简单 = 更常用）。
#      「先到先得」能成立的前提是 kind 足够细：InputArray 和 InputArrayOfArrays
#      分成 mat / matlist 两档，就是为了不让同名不同义的形参在平局里被混淆。
#
# 必需标记和签名文本都在生成时算好写进注册表，运行期不再碰 formals()。

# 单个实参与单个形参的匹配分。-999 表示类型不兼容，直接淘汰该重载。
# 几何类型按「向量长度」判：Point/Size 要 2 个、Rect 要 4 个、RotatedRect 要 5 个。
# 长度对不上给 1 分（允许，但很弱），这样 rectangle(img, c(10,10,20,20), ...)
# 会正确落到 Rect 重载，而不是被当成 (pt1, pt2)。
.ropecv_score <- function(kind, v) {
  if (is.null(v)) {
    return(if (kind %in% c("mat", "matlist", "int", "dbl", "num", "lst", "pt",
                           "size", "rect", "rr", "rng", "scalar", "tc")) 1L else -999L)
  }
  n <- if (is.numeric(v) || is.logical(v)) length(v) else NA_integer_
  switch(kind,
    mat = if (inherits(v, "cvMat")) 3L
          else if (is.list(v)) 2L
          else if (!is.na(n)) 1L
          else -999L,
    # Mat 的集合（InputArrayOfArrays：split/merge 的输出、DescriptorMatcher
    # 的 masks、hconcat 的输入序列）。本相是 list，给 3 分；单个 cvMat 也收
    # （OpenCV 当成只有一个元素的集合），但只给 1 分。
    #
    # 这一档不是锦上添花，是 DescriptorMatcher::match 两个重载的分水岭：
    #   match(query, masks)            masks 是 InputArrayOfArrays
    #   match(query, train, mask=NULL) train 是 InputArray
    # 两者都记成 mat 时，match(q, t) 得分完全相同，按「先到先得」会选中
    # 形参更少的那个，于是 t 被当成掩码，静默返回 0 条匹配——不报错，
    # 只是结果空。给了这一档之后 match(q, t) 落到 train 那个重载上。
    matlist = if (is.list(v)) 3L
              else if (inherits(v, "cvMat")) 1L
              else if (!is.na(n)) 1L
              else -999L,
    # 结构体参数（Params / DetectorParameters 之类）在 R 侧是命名 list，
    # 但 as_<X>() 两种形态都收：cvSimpleBlobDetectorParams() 造出来的对象
    # 也应当能传。list 优先（3 分），对象给 2 分。
    lst = if (is.list(v)) 3L else if (inherits(v, "cvObject")) 2L else -999L,
    int = if (is.integer(v)) 3L else if (is.numeric(v)) 2L else -999L,
    dbl = if (is.double(v)) 3L else if (is.numeric(v)) 2L else -999L,
    num = if (is.na(n)) -999L else 3L,
    pt   = if (is.na(n)) -999L else if (n == 2L) 3L else 1L,
    size = if (is.na(n)) -999L else if (n == 2L) 3L else 1L,
    rect = if (is.na(n)) -999L else if (n == 4L) 3L else 1L,
    rr   = if (is.na(n)) -999L else if (n == 5L) 3L else 1L,
    rng  = if (is.na(n)) -999L else if (n == 2L) 2L else 1L,
    scalar = if (is.na(n) || n > 4L) -999L else 3L,
    tc   = if (is.na(n)) -999L else if (n <= 3L) 3L else 1L,
    lgl = if (is.logical(v)) 3L else -999L,
    chr = if (is.character(v)) 3L else -999L,
    # 'any' 是生成器没认出来的类型（Size2f、FontFace 这类），传什么进去
    # 由 C++ 那边接。它是个通配符，必须给分——给 0 分会让「有一个 any 形参、
    # 但其余形参全对」的重载输给「有一个形参类型勉强凑上」的重载：
    # cvRotatedRect(c(10,20), c(4,6), 30) 就会落到 (point1, point2, point3)
    # 那个重载上，然后 30 被当成 Point2f，报「需要长度 2 的向量」。
    # 给 2 分：比精确匹配（3）弱，比凑合的几何类型（1）强。
    2L)
}

.ropecv_fit <- function(sig, args, nms) {
  pn <- names(sig$p)
  n <- length(args)
  slot <- integer(n)
  used <- logical(length(pn))

  for (i in seq_len(n)) {
    if (nzchar(nms[i])) {
      j <- match(nms[i], pn)
      if (is.na(j) || used[j]) return(NULL)
      slot[i] <- j
      used[j] <- TRUE
    }
  }

  free <- which(!used)
  k <- 0L
  for (i in seq_len(n)) {
    if (!nzchar(nms[i])) {
      k <- k + 1L
      if (k > length(free)) return(NULL)
      slot[i] <- free[k]
      used[free[k]] <- TRUE
    }
  }

  if (any(sig$r & !used)) return(NULL)

  # 平方和：强匹配加权、弱匹配重罚，避免「参数多的那一方总分天然更高」
  sc <- 0
  for (i in seq_len(n)) {
    s <- .ropecv_score(sig$p[[slot[i]]], args[[i]])
    if (s < 0L) return(NULL)
    sc <- sc + s * s
  }
  list(score = sc, f = sig$f, args = args)
}

.ropecv_pick <- function(fname, sigs, args) {
  n <- length(args)
  nms <- names(args)
  if (is.null(nms)) nms <- rep("", n) else nms[is.na(nms)] <- ""

  best <- NULL
  best_score <- -1L
  for (s in sigs) {
    r <- .ropecv_fit(s, args, nms)
    if (!is.null(r) && r$score > best_score) {
      best_score <- r$score
      best <- r
    }
  }
  if (is.null(best)) {
    stop(sprintf("%s: no matching overload. Available signatures:\n  %s\npassed: (%s)",
                 fname,
                 paste(vapply(sigs, function(s) s$s, character(1)), collapse = "\n  "),
                 paste(ifelse(nzchar(nms), paste0(nms, " = "), ""),
                       vapply(args, function(a) class(a)[1], character(1)),
                       sep = "", collapse = ", ")),
         call. = FALSE)
  }
  do.call(best$f, best$args)
}
