# 由 tools/gen/emit.py 生成，请勿手改。

#' @title ensureInclusionConstraint
#' @description ROpenCV 绑定。C++ 签名：<code>Mat ensureInclusionConstraint(const Mat &amp; M, Size size, float trimRatio)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_ensureInclusionConstraint <- function(M, size, trimRatio) {
  .Call(`_ROpenCV_cv_ensureInclusionConstraint`, M, size, trimRatio)
}

#' @title estimateOptimalTrimRatio
#' @description ROpenCV 绑定。C++ 签名：<code>float estimateOptimalTrimRatio(const Mat &amp; M, Size size)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_estimateOptimalTrimRatio <- function(M, size) {
  .Call(`_ROpenCV_cv_estimateOptimalTrimRatio`, M, size)
}
