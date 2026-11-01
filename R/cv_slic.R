# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createSuperpixelSLIC
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SuperpixelSLIC&gt; createSuperpixelSLIC(InputArray image, int algorithm, int region_size, float ruler)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createSuperpixelSLIC <- function(image, algorithm = SLICO, region_size = 10, ruler = 10.0) {
  .Call(`_ROpenCV_cv_createSuperpixelSLIC`, image, algorithm, region_size, ruler)
}
