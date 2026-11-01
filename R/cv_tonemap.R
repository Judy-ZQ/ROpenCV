# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createTonemapDurand
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;TonemapDurand&gt; createTonemapDurand(float gamma, float contrast, float saturation, float sigma_color, float sigma_space)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createTonemapDurand <- function(gamma = 1.0, contrast = 4.0, saturation = 1.0, sigma_color = 2.0, sigma_space = 2.0) {
  .Call(`_ROpenCV_cv_createTonemapDurand`, gamma, contrast, saturation, sigma_color, sigma_space)
}
