# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createHausdorffDistanceExtractor
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;HausdorffDistanceExtractor&gt; createHausdorffDistanceExtractor(int distanceFlag, float rankProp)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createHausdorffDistanceExtractor <- function(distanceFlag = NORM_L2, rankProp = 0.6) {
  .Call(`_ROpenCV_cv_createHausdorffDistanceExtractor`, distanceFlag, rankProp)
}

#' @title createShapeContextDistanceExtractor
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;ShapeContextDistanceExtractor&gt; createShapeContextDistanceExtractor(int nAngularBins, int nRadialBins, float innerRadius, float outerRadius, int iterations, const Ptr&lt;HistogramCostExtractor&gt; &amp; comparer, const Ptr&lt;ShapeTransformer&gt; &amp; transformer)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createShapeContextDistanceExtractor <- function(nAngularBins = 12, nRadialBins = 4, innerRadius = 0.2, outerRadius = 2, iterations = 3, comparer = NULL, transformer = NULL) {
  .Call(`_ROpenCV_cv_createShapeContextDistanceExtractor`, nAngularBins, nRadialBins, innerRadius, outerRadius, iterations, comparer, transformer)
}
