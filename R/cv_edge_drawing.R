# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createEdgeDrawing
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;EdgeDrawing&gt; createEdgeDrawing()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createEdgeDrawing <- function() {
  .Call(`_ROpenCV_cv_createEdgeDrawing`)
}
