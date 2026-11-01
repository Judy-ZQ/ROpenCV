# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createScanSegment
#' @description ROpenCV 绑定。C++ 签名：<code>cv::Ptr&lt;ScanSegment&gt; createScanSegment(int image_width, int image_height, int num_superpixels, int slices, bool merge_small)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createScanSegment <- function(image_width, image_height, num_superpixels, slices = 8, merge_small = TRUE) {
  .Call(`_ROpenCV_cv_createScanSegment`, image_width, image_height, num_superpixels, slices, merge_small)
}
