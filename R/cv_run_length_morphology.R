# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createRLEImage
#' @description ROpenCV 绑定。C++ 签名：<code>void createRLEImage(const std::vector&lt;cv::Point3i&gt;&amp; runs, OutputArray res, Size size)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_createRLEImage <- function(runs, size = c(0, 0), dst = NULL) {
  .Call(`_ROpenCV_cv_createRLEImage`, runs, size, dst)
}

#' @title isRLMorphologyPossible
#' @description ROpenCV 绑定。C++ 签名：<code>bool isRLMorphologyPossible(InputArray rlStructuringElement)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_isRLMorphologyPossible <- function(rlStructuringElement) {
  .Call(`_ROpenCV_cv_isRLMorphologyPossible`, rlStructuringElement)
}

#' @title paint
#' @description ROpenCV 绑定。C++ 签名：<code>void paint(InputOutputArray image, InputArray rlSrc, const cv::Scalar&amp; value)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>image</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_paint <- function(image = NULL, rlSrc, value) {
  .Call(`_ROpenCV_cv_paint`, image, rlSrc, value)
}

#' @title dilate
#' @description ROpenCV 绑定。C++ 签名：<code>void dilate(InputArray rlSrc, OutputArray rlDest, InputArray rlKernel, Point anchor)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_ximgproc_rl_dilate <- function(rlSrc, rlKernel, anchor = c(0, 0), dst = NULL) {
  .Call(`_ROpenCV_cv_ximgproc_rl_dilate`, rlSrc, rlKernel, anchor, dst)
}

#' @title erode
#' @description ROpenCV 绑定。C++ 签名：<code>void erode(InputArray rlSrc, OutputArray rlDest, InputArray rlKernel, bool bBoundaryOn, Point anchor)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_ximgproc_rl_erode <- function(rlSrc, rlKernel, bBoundaryOn = TRUE, anchor = c(0, 0), dst = NULL) {
  .Call(`_ROpenCV_cv_ximgproc_rl_erode`, rlSrc, rlKernel, bBoundaryOn, anchor, dst)
}

#' @title getStructuringElement
#' @description ROpenCV 绑定。C++ 签名：<code>cv::Mat getStructuringElement(int shape, Size ksize)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_ximgproc_rl_getStructuringElement <- function(shape, ksize) {
  .Call(`_ROpenCV_cv_ximgproc_rl_getStructuringElement`, shape, ksize)
}

#' @title morphologyEx
#' @description ROpenCV 绑定。C++ 签名：<code>void morphologyEx(InputArray rlSrc, OutputArray rlDest, int op, InputArray rlKernel, bool bBoundaryOnForErosion, Point anchor)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_ximgproc_rl_morphologyEx <- function(rlSrc, op, rlKernel, bBoundaryOnForErosion = TRUE, anchor = c(0, 0), dst = NULL) {
  .Call(`_ROpenCV_cv_ximgproc_rl_morphologyEx`, rlSrc, op, rlKernel, bBoundaryOnForErosion, anchor, dst)
}

#' @title threshold
#' @description ROpenCV 绑定。C++ 签名：<code>void threshold(InputArray src, OutputArray rlDest, double thresh, int type)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_ximgproc_rl_threshold <- function(src, thresh, type, dst = NULL) {
  .Call(`_ROpenCV_cv_ximgproc_rl_threshold`, src, thresh, type, dst)
}
