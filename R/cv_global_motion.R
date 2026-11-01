# 由 tools/gen/emit.py 生成，请勿手改。

#' @title estimateGlobalMotionLeastSquares
#' @description ROpenCV 绑定。C++ 签名：<code>Mat estimateGlobalMotionLeastSquares(InputOutputArray points0, InputOutputArray points1, int model, float * rmse)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_estimateGlobalMotionLeastSquares <- function(points0 = NULL, points1 = NULL, model = MM_AFFINE) {
  .Call(`_ROpenCV_cv_estimateGlobalMotionLeastSquares`, points0, points1, model)
}

#' @title getMotion
#' @description ROpenCV 绑定。C++ 签名：<code>Mat getMotion(int from, int to, const std::vector&lt;Mat&gt; &amp; motions)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_getMotion <- function(from, to, motions) {
  .Call(`_ROpenCV_cv_getMotion`, from, to, motions)
}
