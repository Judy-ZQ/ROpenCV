# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createSuperpixelSEEDS
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SuperpixelSEEDS&gt; createSuperpixelSEEDS(int image_width, int image_height, int image_channels, int num_superpixels, int num_levels, int prior, int histogram_bins, bool double_step)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createSuperpixelSEEDS <- function(image_width, image_height, image_channels, num_superpixels, num_levels, prior = 2, histogram_bins = 5, double_step = FALSE) {
  .Call(`_ROpenCV_cv_createSuperpixelSEEDS`, image_width, image_height, image_channels, num_superpixels, num_levels, prior, histogram_bins, double_step)
}
