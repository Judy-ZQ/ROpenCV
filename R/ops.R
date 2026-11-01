# cvMat 的运算符重载（手写，不生成）
#
# 目标：让 cvMat 在 R 里用起来像矩阵，省掉 cv2r / r2cv 的来回拷贝。
#
# ---------------------------------------------------------------- 语义约定
#
# **结果类型永远是输入的类型。** 整数深度按 OpenCV 的规则饱和，不做隐式提升：
#
#     img8u <- Mat(...)          # CV_8UC3，某像素 250
#     img8u + 10                 # -> 255，不是 260
#     -img8u                     # -> 全 0，不是负数
#
# 这是 OpenCV 的语义，不是 R 的。两条路都说得通，但绑定的身份是「OpenCV 的
# 薄封装」，所以跟 OpenCV 走；要按 R 的方式算，先显式转浮点：
#
#     cv_mat_convert(img8u, CV_64F) + 10
#
# 整数上第一次用运算符时会提示一次（每个会话一次），之后就安静了。
#
# 一条更简单的规则可以概括哪些 op 能用整数：
#   - 保类型的（abs / floor / ceiling / trunc / round / sign）整数也能用；
#   - 会改值域的（sin / log / sqrt / exp / ^）要求 CV_32F / CV_64F。
# 后者如果允许整数，结果会被 convertTo 截回原深度，log(255)=5.5 变 5，
# 这种静默损失比报错难查得多。
#
# ---------------------------------------------------------------- 映射表
#
#   +  -  *  /         -> cv_add / cv_subtract / cv_multiply / cv_divide（逐元素）
#   与标量运算         -> cv_mat_convert()，即 Mat::convertTo，等价于
#                         Mat::operator*=(double) 的内部做法
#   ^                  -> cv_pow
#   %*%                -> cv_gemm（矩阵乘，要求 CV_32F / CV_64F）
#   solve(a)           -> cv_invert（求逆）
#   solve(a, b)        -> cv_solve
#   t()                -> cv_transpose
#   det()              -> cv_determinant
#
# ---------------------------------------------------------------- 报错语言
#
# 这里所有报错字符串都是英文，注释是中文。不是随手定的：R CMD check 的
# "code files for non-ASCII characters" 只放行注释里的非 ASCII，字符串里的
# 中文会让门禁从 OK 变成 WARNING。包里 zzz.R / class.R 的报错本来也是英文。
# 想写中文说明的，写进注释或 Rd 页面，不要写进字符串。

# ---------------------------------------------------------------- C++ 入口
#
# RcppExports.R 在构建时被删掉（见 tools/build_probe.sh），壳子一律手写。

#' 转换 cvMat 的类型 / 数值范围
#'
#' 对应 \code{cv::Mat::convertTo}：\code{dst = src * alpha + beta}，
#' 结果按 \code{rtype} 饱和。\code{rtype = -1} 表示保持原类型，
#' 此时等价于 OpenCV 的 \code{Mat::operator*=(double)}。
#'
#' @param src cvMat 对象
#' @param rtype 目标类型码，例如 \code{CV_32F}；\code{-1} 表示不变
#' @param alpha 乘数
#' @param beta 加数
#' @return 新的 cvMat
#' @export
cv_mat_convert <- function(src, rtype = -1L, alpha = 1, beta = 0) {
  if (!is_cvMat(src)) stop("cv_mat_convert: src must be a cvMat", call. = FALSE)
  .Call(`_ROpenCV_cv_mat_convert`, src, as.integer(rtype),
        as.numeric(alpha), as.numeric(beta))
}

#' 逐元素一元数学函数
#'
#' OpenCV 5 的公开 API 只剩 \code{exp} / \code{log} / \code{sqrt} / \code{pow}
#' 四个一元函数，\code{sin}、\code{cos}、\code{log10} 这一族在 5.0 里被删掉了，
#' 所以这里补一份，语义与 OpenCV 4.x 一致：同尺寸、同通道、同深度，逐元素计算。
#'
#' 计算过程在 \code{CV_64F} 上做，最后饱和回原深度。
#'
#' @param src cvMat 对象
#' @param op 运算名，见 \code{\link{cvMat-ops}} 的说明
#' @param param \code{"rdiv"} 的被除数，其余运算忽略
#' @return 新的 cvMat
#' @export
cv_mat_math <- function(src, op, param = 0) {
  if (!is_cvMat(src)) stop("cv_mat_math: src must be a cvMat", call. = FALSE)
  if (!is.character(op) || length(op) != 1L)
    stop("cv_mat_math: op must be a single string", call. = FALSE)
  .Call(`_ROpenCV_cv_mat_math`, src, op, as.numeric(param))
}

.ropecv_ops_state <- new.env(parent = emptyenv())
.ropecv_ops_state$warned <- FALSE

# 整数深度上做算术会饱和，说一次就够了。放在运算符里而不是 cv_add 里：
# cv_add 是「OpenCV 算术」，饱和是它的本职；而 + 长得像 R 的加法。
#
# 只对窄整数（8U/8S/16U/16S）提示。CV_32S 的上下界是 ±2^31，日常数值运算碰不到，
# 拿「250 + 10 得 255」去说它反而误导——那是 8 位的行为。
.ropecv_ops_warn_int <- function(x, what) {
  if (isTRUE(.ropecv_ops_state$warned)) return(invisible(NULL))
  d <- mat_info(x)[5]
  if (!d %in% c(CV_8U, CV_8S, CV_16U, CV_16S)) return(invisible(NULL))
  .ropecv_ops_state$warned <- TRUE
  message(sprintf(paste0(
    "cvMat %s follows OpenCV arithmetic: 8-bit and 16-bit depths saturate at the\n",
    "type's bounds (250 + 10 gives 255, -x gives 0), not R's numeric semantics.\n",
    "For real arithmetic, convert first: cv_mat_convert(x, CV_64F).\n",
    "(This note is shown once per session.)"), what))
  invisible(NULL)
}

.ropecv_ops_need_float <- function(x, what) {
  d <- mat_info(x)[5]
  if (d == CV_32F || d == CV_64F) return(invisible(NULL))
  stop(sprintf(paste0(
    "%s requires CV_32F or CV_64F, got %s.\n",
    "  Convert first: cv_mat_convert(x, CV_64F)"),
    what, .ropecv_ops_depth_name(d)), call. = FALSE)
}

.ropecv_ops_depth_name <- function(d) {
  nm <- c("CV_8U", "CV_8S", "CV_16U", "CV_16S", "CV_32S", "CV_32F", "CV_64F")
  if (d >= 0L && d < length(nm)) nm[d + 1L] else sprintf("depth=%d", d)
}

# 标量运算的唯一入口：走 convertTo，和 Mat::operator*=(double) 同一条路径。
#   fwd = TRUE : x op s
#   fwd = FALSE: s op x
# cv::CmpTypes 的数值。cv_compare() 收的是整数，报错里直接给出来，
# 省得使用者去翻头文件。
.ropecv_cmp_code <- c("==" = 0L, ">" = 1L, ">=" = 2L, "<" = 3L, "<=" = 4L, "!=" = 5L)

# 比较运算符不重载，不是懒得写：OpenCV 的比较结果是一张 0/255 的掩码图，
# 重载成 logical 就得把整张图拷回 R，那正是这个包要避免的事。
.ropecv_cmp_hint <- function(op, rhs) {
  sprintf(paste0(
    "cvMat does not support the %s operator: OpenCV comparisons return a 0/255\n",
    "mask, not a logical matrix, so overloading %s would break R's semantics.\n",
    "  mask:      cv_compare(x, %s, %dL)    # %s is CMP_* code %d\n",
    "  R logical: as_array(x) %s %s"),
    op, op, rhs, .ropecv_cmp_code[[op]], op, .ropecv_cmp_code[[op]], op, rhs)
}

.ropecv_ops_scalar <- function(x, s, op, fwd) {
  switch(op,
    "+" = cv_mat_convert(x, -1L, 1, s),
    "-" = if (fwd) cv_mat_convert(x, -1L, 1, -s) else cv_mat_convert(x, -1L, -1, s),
    "*" = cv_mat_convert(x, -1L, s, 0),
    # 正反向都走「在 double 上算完再饱和」，取整规则才一致。
    # 用 cv_divide() 的话整数类型是截断除法，和 m / 2 的 convertTo 对不上。
    "/" = if (fwd) cv_mat_convert(x, -1L, 1 / s, 0) else cv_mat_math(x, "rdiv", s),
    "==" = ,
    "!=" = ,
    "<" = ,
    ">" = ,
    "<=" = ,
    ">=" = stop(.ropecv_cmp_hint(op, format(s)), call. = FALSE),
    stop(sprintf("cvMat does not support the %s operator with a scalar", op),
         call. = FALSE))
}

.ropecv_ops_is_scalar <- function(v) {
  (is.numeric(v) || is.logical(v)) && length(v) == 1L && !is.na(v)
}

# ---------------------------------------------------------------- Ops 组

#' @export
Ops.cvMat <- function(e1, e2) {
  op <- .Generic

  if (missing(e2)) {
    if (op == "+") return(e1)
    if (op == "-") {
      .ropecv_ops_warn_int(e1, "unary minus")
      return(cv_mat_convert(e1, -1L, -1, 0))
    }
    stop(sprintf("cvMat does not support the unary %s operator", op), call. = FALSE)
  }

  both <- is_cvMat(e1) && is_cvMat(e2)

  if (both) {
    .ropecv_ops_warn_int(e1, op)
    # 比较单独判：switch 里无名分支只有最后一个才当默认值，
    # 塞两个无名分支进去前一个会被静默跳过。
    # 右边也是 cvMat，提示里的写法必须两边都转，不然照抄跑不通。
    if (op %in% names(.ropecv_cmp_code)) stop(.ropecv_cmp_hint(op, "as_array(y)"), call. = FALSE)
    return(switch(op,
      "+" = cv_add(e1, e2),
      "-" = cv_subtract(e1, e2),
      "*" = cv_multiply(e1, e2),
      "/" = cv_divide(e1, e2),
      "^" = stop(paste0(
        "cvMat ^ cvMat is not supported: OpenCV's pow takes a scalar exponent only.\n",
        "  For element-wise powers use cv_pow(x, s)."), call. = FALSE),
      stop(sprintf("cvMat does not support the %s operator.", op), call. = FALSE)))
  }

  x <- if (is_cvMat(e1)) e1 else e2
  s <- if (is_cvMat(e1)) e2 else e1
  if (!.ropecv_ops_is_scalar(s)) {
    stop(sprintf(paste0(
      "cvMat supports the %s operator with a scalar only, got a vector of length %d.\n",
      "  R's recycling rule has no obvious meaning for a 2-D/3-D matrix here.\n",
      "  If that is what you want, convert first: as_array(x)."),
      op, length(s)), call. = FALSE)
  }
  if (op == "^") {
    .ropecv_ops_need_float(x, "cvMat ^ scalar")
    if (is_cvMat(e1)) return(cv_pow(x, s))
    stop("scalar ^ cvMat is not supported (no element-wise power with a scalar base).",
         call. = FALSE)
  }
  .ropecv_ops_warn_int(x, op)
  .ropecv_ops_scalar(x, s, op, fwd = is_cvMat(e1))
}

# ---------------------------------------------------------------- Math 组

.ropecv_math_ops <- c("abs", "sign", "sqrt", "floor", "ceiling", "trunc",
                      "round", "exp", "log", "log2", "log10",
                      "sin", "cos", "tan", "asin", "acos", "atan")

#' @export
Math.cvMat <- function(x, ...) {
  op <- .Generic
  args <- list(...)

  if (op == "log") {
    base <- if (length(args) >= 1L) args[[1L]] else NULL
    if (is.null(base)) return(cv_mat_math(x, "log"))
    if (!is.numeric(base) || length(base) != 1L || is.na(base) ||
        base <= 0 || base == 1)
      stop("log(x, base): base must be a single positive number other than 1",
           call. = FALSE)
    if (base == 2) return(cv_mat_math(x, "log2"))
    if (base == 10) return(cv_mat_math(x, "log10"))
    if (base == exp(1)) return(cv_mat_math(x, "log"))
    return(cv_mat_convert(cv_mat_math(x, "log"), -1L, 1 / log(base), 0))
  }

  if (op == "round") {
    digits <- if (length(args) >= 1L) args[[1L]] else 0L
    if (!is.numeric(digits) || length(digits) != 1L)
      stop("round(x, digits): digits must be a single number", call. = FALSE)
    if (digits == 0L) return(cv_mat_math(x, "round"))
    # round(x, d) == round(x * 10^d) / 10^d，两步都保持原类型。
    k <- 10^digits
    return(cv_mat_convert(cv_mat_math(cv_mat_convert(x, -1L, k, 0), "round"),
                          -1L, 1 / k, 0))
  }

  if (!op %in% .ropecv_math_ops) {
    stop(sprintf(paste0(
      "cvMat does not support %s().\n",
      "  Supported: %s\n",
      "  For anything else (cumsum, gamma, sinh, ...) use as_array(x) first."),
      op, paste(.ropecv_math_ops, collapse = ", ")), call. = FALSE)
  }

  cv_mat_math(x, op)
}

# ---------------------------------------------------------------- 强制转换
#
# as.matrix() 不是为了让人真的把图变成 R 矩阵（那用 as_array()，语义更清楚），
# 而是为了接住一批「按 dim 分派」的函数。apply() 的第一句就是
#     if (!is.array(X)) X <- as.matrix(X)
# 所以没有这个方法，apply(a, 1, sum) 报的是 "cannot coerce type 'externalptr'"。
#
# 多通道返回三维数组而不是压成二维：这个方法的主要消费者是按 dim 分派的函数，
# 压成二维会把通道维丢掉，apply 的 MARGIN 就对不上了。要 R 的矩阵语义，
# 用 as_array()——名字和行为对得上。
#
# 整数深度取数值（integer）而不是 raw：raw 参与不了 mean/sum 这类运算，
# apply(img, 3, mean) 会返回 NA 加一句警告，等于这个方法白接。as_array()
# 保留 raw 是为了省内存，那是另一回事。
#' @export
as.matrix.cvMat <- function(x, ...) as_array(x, numeric = TRUE)

# ---------------------------------------------------------------- 汇总统计
#
# sum / max / mean 是「像矩阵一样用」最先会打的几个词，而默认实现给的是
# "invalid 'type' (externalptr) of argument"（mean 更糟：静默返回 NA 加一句警告）。
# 所以这几个必须自己接。
#
# 注意 max / min 走 cv_minMaxIdx 而不是 cv_minMaxLoc：后者是生成器从
# cv::minMaxLoc 绑出来的，OpenCV 规定它只收单通道，彩色图进去直接抛断言。
# cv_minMaxIdx 是手写的那一份，多通道只返回数值、不给下标，正好够用。

#' @export
Summary.cvMat <- function(..., na.rm = FALSE) {
  op <- .Generic
  xs <- list(...)
  if (length(xs) != 1L) {
    stop(sprintf(paste0(
      "%s() on a cvMat takes exactly one matrix, got %d.\n",
      "  Combine them first, e.g. sum(a + b)."), op, length(xs)), call. = FALSE)
  }
  x <- xs[[1L]]
  n <- length(x)
  if (n == 0L) stop("cvMat is empty (0 x 0)", call. = FALSE)

  if (op == "sum") return(sum(cv_sum(x)))
  if (op == "max") return(cv_minMaxIdx(x)$maxVal)
  if (op == "min") return(cv_minMaxIdx(x)$minVal)
  if (op == "range") {
    r <- cv_minMaxIdx(x)
    return(c(r$minVal, r$maxVal))
  }
  stop(sprintf(paste0(
    "%s() is not defined for cvMat.\n",
    "  For totals use cv_sum() / cv_mean() / cv_minMaxIdx(),",
    " or as_array(x) for anything else."), op), call. = FALSE)
}

# mean() 不是 Summary 组成员（它是 mean.default），得单独接。
#' @export
mean.cvMat <- function(x, ...) {
  n <- length(x)
  if (n == 0L) stop("cvMat is empty (0 x 0)", call. = FALSE)
  # cv_sum 给的是各通道的和（补齐到 4 位，多的补 0），总和除以元素总数
  # 就是全图均值——和 sum(as_array(x)) / length(x) 一致。
  sum(cv_sum(x)) / n
}

# ---------------------------------------------------------------- 线性代数

#' @export
`%*%.cvMat` <- function(x, y) {
  if (!is_cvMat(y)) {
    if (!is.numeric(y))
      stop("%*% needs a cvMat or a numeric matrix on the right-hand side",
           call. = FALSE)
    y <- Mat(y)
  }
  tx <- mat_info(x)[4]
  ty <- mat_info(y)[4]
  if (tx != ty) y <- cv_mat_convert(y, tx, 1, 0)   # 跟着左边走
  cv_gemm(x, y, 1, Mat(), 0, 0)
}

#' @export
t.cvMat <- function(x) cv_transpose(x)

# det() 不是泛型：base::det 内部调 determinant()，所以挂钩子要挂在
# determinant 上。只定义 det.cvMat 不会生效——报的是
# "no applicable method for 'determinant'"，和 det 一点关系都看不出来。
#' @export
determinant.cvMat <- function(x, logarithm = TRUE, ...) {
  d <- cv_determinant(x)
  if (isTRUE(logarithm)) {
    list(modulus = log(abs(d)), sign = sign(d))
  } else {
    list(modulus = abs(d), sign = sign(d))
  }
}

#' @export
solve.cvMat <- function(a, b, ...) {
  if (missing(b) || is.null(b)) {
    .ropecv_ops_need_float(a, "solve(a) (matrix inverse)")
    return(cv_invert(a, DECOMP_LU))
  }
  if (!is_cvMat(b)) {
    if (!is.numeric(b))
      stop("solve(a, b): b must be a cvMat or a numeric matrix", call. = FALSE)
    b <- Mat(b)
  }
  if (mat_info(a)[4] != mat_info(b)[4]) b <- cv_mat_convert(b, mat_info(a)[4], 1, 0)
  cv_solve(a, b, DECOMP_LU)
}

# ---------------------------------------------------------------- 拼接

# cbind/rbind 是 S3 泛型。不接的话 cbind(a, b) 不报错，返回的是一个 1x2 的
# list 矩阵，元素是两个 externalptr——class 是 matrix、dim 也对，看着像成功了，
# 实际是垃圾。这种错会拖到很远的地方才炸（比如 str() 之后才发现里面是指针）。
.ropecv_bind_mats <- function(args, f, what) {
  args <- Filter(Negate(is.null), args)
  if (!length(args)) stop(sprintf("%s() needs at least one cvMat", what), call. = FALSE)

  ok <- vapply(args, is_cvMat, logical(1))
  if (!all(ok)) {
    cls <- vapply(args[!ok], function(v) {
      cl <- class(v)
      if (length(cl)) cl[1] else typeof(v)
    }, character(1))
    stop(sprintf(paste0(
      "%s() got a %s argument; only cvMat is accepted.\n",
      "  Mixing types would need a rule for depth and channels that R's cbind\n",
      "  does not have. Convert first: Mat(as.matrix(x)), or work on arrays."),
      what, paste(unique(cls), collapse = " / ")), call. = FALSE)
  }
  f(args)
}

#' @export
cbind.cvMat <- function(..., deparse.level = 1) {
  .ropecv_bind_mats(list(...), cv_hconcat, "cbind")
}

#' @export
rbind.cvMat <- function(..., deparse.level = 1) {
  .ropecv_bind_mats(list(...), cv_vconcat, "rbind")
}
