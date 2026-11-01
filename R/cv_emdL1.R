# 由 tools/gen/emit.py 生成，请勿手改。

#' @title EMDL1
#' @description ROpenCV 绑定。C++ 签名：<code>float EMDL1(InputArray signature1, InputArray signature2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_EMDL1 <- function(signature1, signature2) {
  .Call(`_ROpenCV_cv_EMDL1`, signature1, signature2)
}
