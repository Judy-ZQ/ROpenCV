# 包级初始化：把 C++ 导出的常量注入命名空间。
# 全部值由编译器从 OpenCV 头文件算出，R 侧不写死任何数字——
# OpenCV 5 把 CV_CN_SHIFT 从 3 改成 5，凡是抄来的常量都可能悄悄错掉。

.ropecv_constants <- function() {
  c(as.list(cv_type_constants()), as.list(cv_enums()))
}

.onLoad <- function(libname, pkgname) {
  list2env(.ropecv_constants(), envir = asNamespace(pkgname))
  invisible(NULL)
}

# .onLoad 里创建的对象不在 NAMESPACE 的 exportPattern 匹配结果中，
# 需要在 attach 之后补进 package 环境，用户才看得到。
.onAttach <- function(libname, pkgname) {
  list2env(.ropecv_constants(), envir = as.environment(paste0("package:", pkgname)))
  invisible(NULL)
}

#' 构造一个 OpenCV 矩阵
#'
#' 三种用法：
#' \preformatted{
#' Mat(m)                      # 从 R 的矩阵 / 三维数组 / raw 向量拷贝
#' Mat(rows, cols, type)       # 按尺寸和类型码新建，初值 0
#' Mat(rows, cols, type, val)  # 同上，用标量填充
#' Mat()                       # 空矩阵，可交给需要预分配的输出参数
#' }
#'
#' 类型码直接用包里导出的常量：\code{CV_8UC1}、\code{CV_8UC3}、\code{CV_32FC1} …
#' 二维 R 矩阵按单通道处理，三维数组 \code{(h, w, c)} 按 OpenCV 的通道交错布局处理。
#'
#' @param rows 行数，或一个 R 矩阵/数组（此时其余参数忽略）
#' @param cols 列数
#' @param type 类型码，例如 \code{CV_8UC3}
#' @param value 初值，标量或长度 1~4 的向量
#' @return cvMat 对象
#' @export
Mat <- function(rows, cols, type, value = 0) {
  if (missing(rows)) return(probe_mat_new(0L, 0L, CV_8UC1, 0))
  # Mat(x)：把 R 的矩阵 / 三维数组 / raw 向量搬进来。
  # 判据是「没有 dim 也没有长度 1」——数组的 is.numeric() 也是 TRUE，
  # 只看 is.numeric 会把 array 当成行数，得到 0x0 的空 Mat。
  if (missing(cols)) {
    if (!is.null(dim(rows)) || is.raw(rows) || length(rows) != 1L)
      return(probe_mat_from(rows))
    return(probe_mat_new(0L, 0L, CV_8UC1, 0))
  }
  if (missing(type)) type <- CV_8UC1
  probe_mat_new(as.integer(rows), as.integer(cols), as.integer(type), value)
}

#' 打印矩阵信息
#' @param m cvMat 对象
#' @return 整数向量 (rows, cols, channels, type, depth)
#' @export
mat_info <- function(m) probe_info(m)

#' 手动回收原生内存
#'
#' 返回式调用产生的 cvMat 由 R 的 finalizer 释放，而 R 的 GC 由 R 堆压力触发，
#' 看不到 cv::Mat 的像素缓冲。包内已按 128 MB 的累计分配量自动触发 GC；
#' 需要在长循环里精确控制内存时，也可以自己调这个函数。
#'
#' @return 不可见 NULL
#' @export
cv_gc <- function() {
  gc()
  invisible(NULL)
}

#' 转成 R 数组，保留原 dtype
#'
#' 默认忠实保留 dtype：CV_8U -> raw，CV_32S -> integer，CV_32F/CV_64F -> double。
#' raw 省内存但不参与算术，做图像运算时给 numeric = TRUE 换成 integer。
#'
#' @param m cvMat 对象
#' @param numeric 逻辑；TRUE 时把 raw 结果转成 integer
#' @return 数组
#' @export
as_array <- function(m, numeric = FALSE) {
  a <- probe_to_r(m)
  if (numeric && is.raw(a)) storage.mode(a) <- "integer"
  a
}

# ---------------------------------------------------------------- cvMat 的 S3 方法
#
# 没有这些方法，控制台会直接打出 <pointer: 0x...>，对交互式使用很不友好。

#' @export
is_cvMat <- function(x) inherits(x, "cvMat")

# 类型码 -> 名字的反查表。CV_CN_SHIFT 在 OpenCV 5 里从 3 改成了 5，
# 所以类型码必须从导出的常量反查，不能按公式硬算。
.ropecv_typenames <- local({
  cache <- NULL
  function() {
    if (!is.null(cache)) return(cache)
    # 不要写死包名。原来这里写的是 asNamespace("probe")——包改名成 ROpenCV 之后
    # 它照样能跑（因为旧 probe 包还装着），但每次打印 cvMat 都会把旧包加载进来，
    # 旧包的 S3 方法反过来覆盖 ROpenCV 的；一旦旧包被卸载，打印就直接报
    # 「there is no package called 'probe'」。
    # topenv(environment()) 拿到的是本包自己的命名空间，改多少次名都不会错。
    ns <- topenv(environment())
    nm <- ls(ns, pattern = "^CV_[0-9]+[USF]C[0-9]+$", all.names = TRUE)
    v <- vapply(nm, function(n) as.integer(get(n, envir = ns)), integer(1))
    cache <<- stats::setNames(nm, as.character(v))
    cache
  }
})

#' @export
dim.cvMat <- function(x) {
  i <- mat_info(x)
  if (i[1] == 0L || i[2] == 0L) return(c(0L, 0L))
  if (i[3] > 1L) c(i[1], i[2], i[3]) else c(i[1], i[2])
}

#' @export
print.cvMat <- function(x, ...) {
  i <- mat_info(x)
  if (i[1] == 0L || i[2] == 0L) {
    cat("<cvMat> empty (0 x 0). Seen when imread() fails or Mat() is left unfilled.\n")
    return(invisible(x))
  }
  tn <- .ropecv_typenames()[as.character(i[4])]
  if (is.na(tn)) tn <- paste0("type=", i[4])
  cat(sprintf("<cvMat> %d x %d, %s, %d channels\n", i[1], i[2], tn, i[3]))
  invisible(x)
}

#' @export
as.array.cvMat <- function(x, ...) as_array(x, ...)

#' @export
length.cvMat <- function(x) {
  d <- dim(x)
  if (is.null(d)) 0 else prod(d)
}

# ------------------------------------------------------------------ 下标读写
#
# 取舍：读走 as_array()（一次全量拷贝，语义与 R 数组完全一致），
# 写走 C++ 原地赋值（不拷贝，直接改 cv::Mat 的像素缓冲）。
#
# 为什么不把读也做成零拷贝视图：cv::Mat 在 create() / copyTo() 时会重新分配
# 缓冲，R 侧若持有一个指向旧缓冲的数组，指针立刻悬垂。而 `[<-` 每次调用都
# 重新从 XPtr 取当前的 cv::Mat，不存在这个问题——所以只有「写」能安全地
# 原地做，这也正是「改了 R 侧要反映到图像上」这个需求的关键一半。

# 把各维下标规约成正整数，再线性化成「按列优先展开」的 1-based 下标。
# 借 seq_len(n)[i] 直接复用 R 自己的下标语义：负索引、逻辑索引、缺省维、
# TRUE/FALSE 循环补齐，全都不用重写一遍。
.ropecv_linear_index <- function(d, subs) {
  if (length(subs) == 1L) return(subs[[1]])
  if (all(lengths(subs) == 1L)) {
    li <- subs[[1]]
    mult <- d[1]
    for (k in seq_along(subs)[-1]) {
      li <- li + (subs[[k]] - 1L) * mult
      mult <- mult * d[k]
    }
    return(li)
  }
  g <- do.call(expand.grid, c(subs, list(KEEP.OUT.ATTRS = FALSE)))
  li <- g[[1]]
  mult <- d[1]
  for (k in seq_along(subs)[-1]) {
    li <- li + (g[[k]] - 1L) * mult
    mult <- mult * d[k]
  }
  li
}

#' @export
`[<-.cvMat` <- function(x, i, j, ..., value) {
  d <- dim(x)
  if (is.null(d) || length(d) < 2L || prod(d) == 0L)
    stop("cannot assign into an empty cvMat")
  nd <- length(d)
  # nargs() 减掉 x 和 value：1 = 单下标（x[i]），2 = x[i, j]，3+ = 带通道维
  nsub <- nargs() - 2L
  if (nsub == 0L) {
    # m[] <- v：整块，不用绕 expand.grid
    li <- seq_len(prod(d))
  } else if (nsub == 1L) {
    # 单下标按 R 的数组规则走线性下标
    n <- prod(d)
    li <- if (missing(i)) seq_len(n) else seq_len(n)[i]
  } else {
    subs <- lapply(d, seq_len)          # 缺省的维 = 全选
    if (!missing(i)) subs[[1]] <- seq_len(d[1])[i]
    if (!missing(j)) subs[[2]] <- seq_len(d[2])[j]
    ndots <- nsub - 2L
    if (ndots > 0L) {
      # 这里不能写 extra <- list(...)：img[1, 1, ] 的空实参一旦进了 list()
      # 就会报 "argument is missing, with no default"——而 img[i, j, ] 是
      # 三通道图上最常见的写法（「这个像素的三个分量」），直接堵死了。
      # alist 把实参表达式原样接住，再用 identical(, quote(expr =)) 区分
      # 「这一维没写」和「这一维写了但值为空」。
      dots <- eval(substitute(alist(...)))
      for (k in seq_len(ndots)) {
        if (k + 2L > nd)
          stop("cvMat has only ", nd, " dimensions; too many subscripts")
        if (!identical(dots[[k]], quote(expr = )))
          subs[[k + 2L]] <- seq_len(d[k + 2L])[eval(dots[[k]], parent.frame())]
      }
    }
    li <- .ropecv_linear_index(d, subs)
  }
  if (!length(li)) return(x)            # 空选择：什么都不做
  # R 的 [<- 会循环补齐，这里跟着走。自己另立一套「长度不符就报错」的规矩，
  # 结果是同一段代码在 matrix 上能跑、在 cvMat 上报错，反而更难用。
  if (length(value) != 1L && length(value) != length(li)) {
    if (length(li) %% length(value) != 0L)
      warning("number of items to replace is not a multiple of replacement length")
    value <- rep_len(value, length(li))
  }
  probe_mat_assign(x, as.integer(li), value)
  x
}

#' @export
`[.cvMat` <- function(x, i, j, ..., drop = TRUE) {
  d <- dim(x)
  if (is.null(d) || prod(d) == 0L) return(NULL)

  # 必须数实参个数，不能靠 missing()：R 的 missing() 对空实参也返回 TRUE，
  # 于是 m[2]（线性下标）和 m[2, ]（第二行）在 missing(j) 上长得一模一样。
  # nargs() 才是「调用里到底写了几个」。
  nsub <- nargs() - 1L
  if (!missing(drop)) nsub <- nsub - 1L

  # 单点快路径：只取一个像素时不值得为它拷一份整图。
  # 三通道的 dim 是 (行, 列, 通道)，一个像素本该给出全部通道，
  # 所以这里按通道展开取回，只取第一个分量会让 m[1, 1] 悄悄丢掉两个。
  if (nsub == 2L && isTRUE(drop) && !missing(i) && !missing(j) &&
      is.numeric(i) && length(i) == 1L && isTRUE(i > 0) &&
      is.numeric(j) && length(j) == 1L && isTRUE(j > 0)) {
    base <- (j - 1) * d[1] + i
    if (length(d) == 2L) return(probe_mat_extract(x, as.integer(base)))
    cn <- prod(d[-c(1L, 2L)])
    return(probe_mat_extract(x, as.integer(base + (seq_len(cn) - 1L) * d[1] * d[2])))
  }

  a <- as_array(x)

  # m[]：整块，原样给回数组（不能走线性下标，那会把矩阵压成向量）。
  # m[] 和 m[i] 的 nargs() 都是 2，只能靠 missing(i) 分开。
  if (nsub == 0L || (nsub == 1L && missing(i))) return(a)

  # 单下标（m[i]）是线性下标，不能按 (行, 列) 拆开。
  if (nsub == 1L) return(do.call(`[`, list(a, i, drop = drop)))

  # 其余情况：把下标逐维摆好，交给 R 的 `[` 处理——负索引、逻辑索引、
  # 循环补齐、drop 规则全部由 R 自己算，不必重写一遍。
  #
  # 缺省的维补成 seq_len(n)，与空下标等价。之所以要补而不是直接把空下标
  # 传下去：三维数组上 m[1, 1] 按 R 的规则会报 "incorrect number of
  # dimensions"，但对图像来说「一个像素」就该给出全部通道。补完之后
  # m[1, 1]、m[1, 1, ]、m[1, 1, 1:3] 三者等价，也符合用图像时的直觉。
  subs <- vector("list", length(d))
  if (!missing(i)) subs[[1]] <- i
  if (!missing(j)) subs[[2]] <- j
  ndots <- nsub - 2L
  if (ndots > 0L) {
    if (ndots + 2L > length(d))
      stop("cvMat has only ", length(d), " dimensions; too many subscripts")
    # 用 alist 把 ... 原样接下来：空实参（m[1, 2, ]）要能和「没写」区分开。
    dots <- eval(substitute(alist(...)))
    for (k in seq_len(ndots))
      if (!identical(dots[[k]], quote(expr = ))) subs[[k + 2L]] <- dots[[k]]
  }
  for (k in seq_along(subs)) if (is.null(subs[[k]])) subs[[k]] <- seq_len(d[k])

  do.call(`[`, c(list(a), subs, list(drop = drop)))
}

#' 把 cvMat 取回 R 数组（旧版名称）
#'
#' \code{cv2r} 是 \code{\link{as_array}} 的别名，方便从旧版 ROpenCV 迁过来。
#'
#' 默认值和 \code{as_array()} 不同：这里 \code{numeric = TRUE}。
#' 理由是它的用途就是「取出来改」——\code{CV_8U} 取成 \code{raw} 之后，
#' \code{a[3, 3] <- 55} 会报 \code{incompatible types (from raw to double)}，
#' 必须写 \code{as.raw(55)}，等于把最常用的操作挡住了。
#' 要省内存、或者只读不改，用 \code{as_array()}。
#'
#' @param m cvMat 对象
#' @param numeric 逻辑；TRUE（默认）时把 raw 结果转成 integer
#' @return 数组
#' @export
cv2r <- function(m, numeric = TRUE) as_array(m, numeric)

#' 把 R 数组写回 cvMat（原地）
#'
#' 和 \code{\link{as_array}} 配成一对：\code{cv2r} 取出来改，\code{r2cv} 写回去。
#' 写入直接落在原生像素缓冲上，不产生中间拷贝。
#'
#' @param m cvMat 对象
#' @param a 数组或向量，长度必须与 \code{prod(dim(m))} 一致
#' @return 不可见地返回 \code{m}（已被原地修改）
#' @export
r2cv <- function(m, a) {
  if (!is_cvMat(m)) stop("r2cv(m, a): m must be a cvMat")
  d <- dim(m)
  n <- if (is.null(d)) 0 else prod(d)
  if (n == 0) stop("cannot write into an empty cvMat")
  if (length(a) != n)
    stop(sprintf("length mismatch: cvMat needs %s elements, got %s",
                 format(n), format(length(a))))
  probe_mat_assign(m, seq_len(n), a)
  invisible(m)
}

# ------------------------------------------------------------------ 感兴趣区域
#
# 对应 OpenCV 的 Mat(const Mat&, const Rect&)。返回的是**矩阵头**而不是拷贝：
# 像素缓冲还是原图那一块，引用计数加一。所以
#     roi <- cv_mat_roi(img, c(120, 30, 260, 70))
#     cv_rectangle(roi, ...)          # img 上对应位置也变了
# 这正是「Mat 赋值很便宜」和「ROI 会改到原图」两件事的同一个来源。
#
# 为什么不给 `[` 加 ROI 语义：`[` 的读路径走 as_array()，语义是「取出来」，
# 改成视图之后 `a <- img[1:10, 1:10]` 会静默变成可写别名，和 R 的数组直觉
# 相反。写路径（`[<-`）本来就是原地写，已经够用。要视图就显式写 cv_mat_roi()。

#' 取图像的感兴趣区域（共享像素数据）
#'
#' 对应 \code{cv::Mat(const Mat&, const Rect&)}：返回一个共享像素缓冲的子矩阵，
#' 不拷贝数据。对返回值做任何原地修改都会反映到原图上。
#'
#' 需要独立副本时用 \code{cv_copyTo()}：
#' \preformatted{
#' roi  <- cv_mat_roi(img, c(120, 30, 260, 70))   # 视图，改它等于改 img
#' copy <- cv_copyTo(roi)                          # 独立副本
#' }
#'
#' @param m cvMat 对象
#' @param rect 长度 4 的数值向量 \code{c(x, y, w, h)}：左上角坐标与宽高，
#'   按 OpenCV 的像素坐标系（0 起算，原点在左上角）
#' @return 共享数据的 cvMat
#' @export
cv_mat_roi <- function(m, rect) {
  if (!is_cvMat(m)) stop("cv_mat_roi: m must be a cvMat", call. = FALSE)
  if (!is.numeric(rect) || length(rect) != 4L)
    stop("cv_mat_roi: rect must be c(x, y, w, h)", call. = FALSE)
  probe_mat_roi(m, as.integer(rect[1L]), as.integer(rect[2L]),
                as.integer(rect[3L]), as.integer(rect[4L]))
}
