# 由 tools/gen/emit.py 生成，请勿手改。

#' @title calibrateRotatingCamera
#' @description ROpenCV 绑定。C++ 签名：<code>void calibrateRotatingCamera(const std::vector&lt;Mat&gt; &amp; Hs, Mat &amp; K)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_calibrateRotatingCamera <- function(Hs) {
  .Call(`_ROpenCV_cv_calibrateRotatingCamera`, Hs)
}

#' @title focalsFromHomography
#' @description ROpenCV 绑定。C++ 签名：<code>void focalsFromHomography(const Mat &amp; H, double &amp; f0, double &amp; f1, bool &amp; f0_ok, bool &amp; f1_ok)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_focalsFromHomography <- function(H, f0 = NULL, f1 = NULL, f0_ok = NULL, f1_ok = NULL) {
  .Call(`_ROpenCV_cv_focalsFromHomography`, H, f0, f1, f0_ok, f1_ok)
}
