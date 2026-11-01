# 由 tools/gen/emit.py 生成，请勿手改。

#' @title GradientDericheX
#' @description ROpenCV 绑定。C++ 签名：<code>void GradientDericheX(InputArray op, OutputArray dst, double alpha, double omega)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_GradientDericheX <- function(op, alpha, omega, dst = NULL) {
  .Call(`_ROpenCV_cv_GradientDericheX`, op, alpha, omega, dst)
}

#' @title GradientDericheY
#' @description ROpenCV 绑定。C++ 签名：<code>void GradientDericheY(InputArray op, OutputArray dst, double alpha, double omega)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_GradientDericheY <- function(op, alpha, omega, dst = NULL) {
  .Call(`_ROpenCV_cv_GradientDericheY`, op, alpha, omega, dst)
}
