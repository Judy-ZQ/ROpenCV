# 手写入口的 R 壳子。对应 src/cv_manual.cpp。
#
# 只放生成器产出不了、或者产出会出错的函数。能生成的一律交给生成器，
# 否则同一个函数会有两份定义，改了一处忘了另一处。

#' 找出多维数组的最小/最大值及其位置
#'
#' 与 [cv_minMaxLoc()] 的区别：`minMaxLoc` 只处理二维（给行列），
#' `minMaxIdx` 处理任意维，位置以**线性下标**给出（按 OpenCV 的行优先展开）。
#'
#' @param src 输入数组（`cvMat` 或 R 数组）
#' @param mask 可选掩码，非零处参与统计
#' @return 长度为 4 的 list：`minVal`、`maxVal`、`minIdx`、`maxIdx`。
#'   `minIdx` / `maxIdx` 是长度等于 `src` 维数的整数向量；**多通道输入时为
#'   `NULL`**——OpenCV 在多通道下拒绝返回下标，而 R 的 `(行, 列, 通道)` 数组
#'   映射过来就是多通道。要定位就用 `which(a == max(a), arr.ind = TRUE)`。
#' @export
cv_minMaxIdx <- function(src, mask = NULL) {
  .Call(`_ROpenCV_cv_minMaxIdx`, src, mask)
}

#' 在窗口上挂一个滑动条
#'
#' OpenCV 的 `createTrackbar` 要一个 C 函数指针当回调，生成器翻不出来，所以手写。
#'
#' 回调是**可选**的，两种用法：
#'
#' 1. `onChange = NULL`（默认）：位置由窗口自己保存，R 侧在循环里用
#'    [cv_getTrackbarPos()] 读。简单，适合「滑块调参数 + 循环重绘」。
#' 2. 传一个函数：拖动时 OpenCV 直接回调到 R，不需要循环。函数接收一个整数位置。
#'
#' **创建时不会调用 `onChange`**，和 `cv::createTrackbar` 一致：建滑动条只挂
#' 回调、不动画面，第一帧要自己调一次函数画出来。所以一个窗口挂多条滑动条、
#' 共用一个回调时，先把几条都建好，再统一调一次即可——不需要任何 ready 开关。
#'
#' @param trackbarname 滑动条名字，读位置时用同一个名字
#' @param winname 所在的窗口名，窗口要先用 [cv_namedWindow()] 建好
#' @param value 初始位置
#' @param count 最大值；位置范围是 `0..count`
#' @param onChange 函数或 `NULL`；函数形如 `function(pos) {...}`，`pos` 是 0..count 的整数
#' @return 整数，OpenCV 的返回值（0 表示成功）
#' @seealso [cv_getTrackbarPos()]、[cv_setTrackbarPos()]
#' @export
cv_createTrackbar <- function(trackbarname, winname, value = 0L, count = 100L,
                              onChange = NULL) {
  if (!is.null(onChange) && !is.function(onChange)) {
    stop("onChange must be NULL or a function such as function(pos) {...}",
         call. = FALSE)
  }
  .Call(`_ROpenCV_cv_createTrackbar`, trackbarname, winname,
        as.integer(value), as.integer(count), onChange)
}
