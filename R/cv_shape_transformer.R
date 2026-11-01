# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createAffineTransformer
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;AffineTransformer&gt; createAffineTransformer(bool fullAffine)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createAffineTransformer <- function(fullAffine) {
  .Call(`_ROpenCV_cv_createAffineTransformer`, fullAffine)
}

#' @title createThinPlateSplineShapeTransformer
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;ThinPlateSplineShapeTransformer&gt; createThinPlateSplineShapeTransformer(double regularizationParameter)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createThinPlateSplineShapeTransformer <- function(regularizationParameter = 0) {
  .Call(`_ROpenCV_cv_createThinPlateSplineShapeTransformer`, regularizationParameter)
}
