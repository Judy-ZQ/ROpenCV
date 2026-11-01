# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createSuperpixelLSC
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SuperpixelLSC&gt; createSuperpixelLSC(InputArray image, int region_size, float ratio)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createSuperpixelLSC <- function(image, region_size = 10, ratio = 0.075) {
  .Call(`_ROpenCV_cv_createSuperpixelLSC`, image, region_size, ratio)
}
