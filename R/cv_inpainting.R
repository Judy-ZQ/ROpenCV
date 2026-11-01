# 由 tools/gen/emit.py 生成，请勿手改。

#' @title calcFlowMask
#' @description ROpenCV 绑定。C++ 签名：<code>void calcFlowMask(const Mat &amp; flowX, const Mat &amp; flowY, const Mat &amp; errors, float maxError, const Mat &amp; mask0, const Mat &amp; mask1, Mat &amp; flowMask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_calcFlowMask <- function(flowX, flowY, errors, maxError, mask0, mask1, flowMask = NULL) {
  .Call(`_ROpenCV_cv_calcFlowMask`, flowX, flowY, errors, maxError, mask0, mask1, flowMask)
}

#' @title completeFrameAccordingToFlow
#' @description ROpenCV 绑定。C++ 签名：<code>void completeFrameAccordingToFlow(const Mat &amp; flowMask, const Mat &amp; flowX, const Mat &amp; flowY, const Mat &amp; frame1, const Mat &amp; mask1, float distThresh, Mat&amp; frame0, Mat &amp; mask0)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_completeFrameAccordingToFlow <- function(flowMask, flowX, flowY, frame1, mask1, distThresh, frame0 = NULL, mask0 = NULL) {
  .Call(`_ROpenCV_cv_completeFrameAccordingToFlow`, flowMask, flowX, flowY, frame1, mask1, distThresh, frame0, mask0)
}

#' @title inpaint
#' @description ROpenCV 绑定。C++ 签名：<code>void inpaint(const Mat &amp; src, const Mat &amp; mask, Mat &amp; dst, const int algorithmType)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_xphoto_inpaint <- function(src, mask, dst = NULL, algorithmType) {
  .Call(`_ROpenCV_cv_xphoto_inpaint`, src, mask, dst, algorithmType)
}
