# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createOptFlow_PCAFlow
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;DenseOpticalFlow&gt; createOptFlow_PCAFlow()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createOptFlow_PCAFlow <- function() {
  .Call(`_ROpenCV_cv_createOptFlow_PCAFlow`)
}
