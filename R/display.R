# ---------------------------------------------------------------- 显示与查看
#
# cvMat 存的是 OpenCV 的 BGR(A) 交错布局，R 的 raster 要的是 RGB(A) 的分层数组，
# 两者之间只差一次通道翻转和一次归一化。补上 as.raster 之后 plot(img) 就能直接
# 把图打在当前图形设备上——不用开窗口，不用写文件，交互式看结果最省事的一步。

#' @export
as.raster.cvMat <- function(x, max = NULL, ...) {
  d <- dim(x)
  if (any(d == 0L))
    stop("as.raster() on an empty cvMat. imread() returns one when the file is missing.",
         call. = FALSE)

  nch <- if (length(d) == 3L) d[3] else 1L
  if (!nch %in% c(1L, 3L, 4L))
    stop(sprintf(paste0(
      "as.raster() handles 1, 3 or 4 channels, this cvMat has %d.\n",
      "  Split it first: cv_split(x), then plot the channel you want."), nch),
      call. = FALSE)

  arr <- as_array(x, numeric = TRUE)

  # 不给 max 就按深度取：无符号整数按类型满量程归一化，浮点按 0..1 解释。
  # 有符号整数没有天然的 0..1 映射，同样按 0..1 解释——越界时报错比猜好。
  if (is.null(max)) {
    depth <- mat_info(x)[5]
    max <- if (depth == CV_8U) 255 else if (depth == CV_16U) 65535 else 1
  }
  arr <- arr / max

  rng <- range(arr)
  if (rng[1] < 0 || rng[2] > 1)
    stop(sprintf(paste0(
      "as.raster() needs values in [0, 1]; after dividing by max = %g this one spans %g .. %g.\n",
      "  A float image scaled 0..255:   as.raster(x, max = 255)\n",
      "  A float image of unknown range: cv_normalize(x, NULL, 0, 1, NORM_MINMAX, CV_32F)"),
      max, rng[1], rng[2]), call. = FALSE)

  # BGR -> RGB；四通道是 BGRA，只翻前三个，alpha 留在原位。
  if (nch == 3L) arr <- arr[, , 3:1, drop = FALSE]
  else if (nch == 4L) arr <- arr[, , c(3L, 2L, 1L, 4L), drop = FALSE]

  grDevices::as.raster(arr, max = 1)
}

# plot(img) 默认走 plot.default，也就是 xy.coords，报的是
# "invalid plotting structure"——和「这是张图」一点关系都看不出来。
#' @export
plot.cvMat <- function(x, ...) {
  graphics::plot(as.raster(x), ...)
}

# ---------------------------------------------------------------- 摘要
#
# summary.default 给的是长度和类名（"921600  cvMat  externalptr"），对看图没帮助。

#' @export
summary.cvMat <- function(object, ...) {
  d <- dim(object)
  if (any(d == 0L)) {
    return(stats::setNames(rep(NA_real_, 6L),
                           c("Min.", "1st Qu.", "Median", "Mean", "3rd Qu.", "Max.")))
  }
  a <- as_array(object, numeric = TRUE)
  if (length(d) == 2L) return(summary(as.vector(a)))

  # 多通道：每个通道一行。通道名按 OpenCV 的存储顺序，不是 RGB。
  m <- t(apply(a, 3L, function(v) summary(as.vector(v))))
  nch <- d[3]
  rownames(m) <- if (nch == 3L) c("B", "G", "R")
                 else if (nch == 4L) c("B", "G", "R", "A")
                 else paste0("ch", seq_len(nch))
  m
}
