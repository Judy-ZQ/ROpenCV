# 由 tools/gen/emit.py 生成，请勿手改。

#' @title RadonTransform
#' @description ROpenCV 绑定。C++ 签名：<code>void RadonTransform(InputArray src, OutputArray dst, double theta, double start_angle, double end_angle, bool crop, bool norm)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_RadonTransform <- function(src, theta = 1, start_angle = 0, end_angle = 180, crop = FALSE, norm = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_RadonTransform`, src, theta, start_angle, end_angle, crop, norm, dst)
}
