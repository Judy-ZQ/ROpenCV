# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createFastLineDetector
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;FastLineDetector&gt; createFastLineDetector(int length_threshold, float distance_threshold, double canny_th1, double canny_th2, int canny_aperture_size, bool do_merge)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createFastLineDetector <- function(length_threshold = 10, distance_threshold = 1.414213562, canny_th1 = 50.0, canny_th2 = 50.0, canny_aperture_size = 3, do_merge = FALSE) {
  .Call(`_ROpenCV_cv_createFastLineDetector`, length_threshold, distance_threshold, canny_th1, canny_th2, canny_aperture_size, do_merge)
}
