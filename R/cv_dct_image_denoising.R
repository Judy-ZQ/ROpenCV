# 由 tools/gen/emit.py 生成，请勿手改。

#' @title dctDenoising
#' @description ROpenCV 绑定。C++ 签名：<code>void dctDenoising(const Mat &amp; src, Mat &amp; dst, const double sigma, const int psize)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_dctDenoising <- function(src, dst = NULL, sigma, psize = 16) {
  .Call(`_ROpenCV_cv_dctDenoising`, src, dst, sigma, psize)
}
