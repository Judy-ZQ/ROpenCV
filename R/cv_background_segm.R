# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createBackgroundSubtractorKNN
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;BackgroundSubtractorKNN&gt; createBackgroundSubtractorKNN(int history, double dist2Threshold, bool detectShadows)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createBackgroundSubtractorKNN <- function(history = 500, dist2Threshold = 400.0, detectShadows = TRUE) {
  .Call(`_ROpenCV_cv_createBackgroundSubtractorKNN`, history, dist2Threshold, detectShadows)
}

#' @title createBackgroundSubtractorMOG2
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;BackgroundSubtractorMOG2&gt; createBackgroundSubtractorMOG2(int history, double varThreshold, bool detectShadows)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createBackgroundSubtractorMOG2 <- function(history = 500, varThreshold = 16, detectShadows = TRUE) {
  .Call(`_ROpenCV_cv_createBackgroundSubtractorMOG2`, history, varThreshold, detectShadows)
}
