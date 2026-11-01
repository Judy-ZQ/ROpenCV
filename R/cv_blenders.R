# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createWeightMap
#' @description ROpenCV 绑定。C++ 签名：<code>void createWeightMap(InputArray mask, float sharpness, InputOutputArray weight)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>weight</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_createWeightMap <- function(mask = NULL, sharpness, weight = NULL) {
  .Call(`_ROpenCV_cv_createWeightMap`, mask, sharpness, weight)
}

#' @title normalizeUsingWeightMap
#' @description ROpenCV 绑定。C++ 签名：<code>void normalizeUsingWeightMap(InputArray weight, InputOutputArray src)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>src</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_normalizeUsingWeightMap <- function(weight, src = NULL) {
  .Call(`_ROpenCV_cv_normalizeUsingWeightMap`, weight, src)
}
