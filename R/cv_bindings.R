# 由 tools/gen/emit.py 生成，请勿手改。

#' @title HoughLinesWithAccumulator
#' @description ROpenCV 绑定。C++ 签名：<code>static inline void HoughLinesWithAccumulator(InputArray image, OutputArray lines, double rho, double theta, int threshold, double srn, double stn, double min_theta, double max_theta)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_HoughLinesWithAccumulator <- function(image, rho, theta, threshold, srn = 0, stn = 0, min_theta = 0, max_theta = pi, dst = NULL) {
  .Call(`_ROpenCV_cv_HoughLinesWithAccumulator`, image, rho, theta, threshold, srn, stn, min_theta, max_theta, dst)
}
