# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createChiHistogramCostExtractor
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;HistogramCostExtractor&gt; createChiHistogramCostExtractor(int nDummies, float defaultCost)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createChiHistogramCostExtractor <- function(nDummies = 25, defaultCost = 0.2) {
  .Call(`_ROpenCV_cv_createChiHistogramCostExtractor`, nDummies, defaultCost)
}

#' @title createEMDHistogramCostExtractor
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;HistogramCostExtractor&gt; createEMDHistogramCostExtractor(int flag, int nDummies, float defaultCost)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createEMDHistogramCostExtractor <- function(flag = DIST_L2, nDummies = 25, defaultCost = 0.2) {
  .Call(`_ROpenCV_cv_createEMDHistogramCostExtractor`, flag, nDummies, defaultCost)
}

#' @title createEMDL1HistogramCostExtractor
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;HistogramCostExtractor&gt; createEMDL1HistogramCostExtractor(int nDummies, float defaultCost)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createEMDL1HistogramCostExtractor <- function(nDummies = 25, defaultCost = 0.2) {
  .Call(`_ROpenCV_cv_createEMDL1HistogramCostExtractor`, nDummies, defaultCost)
}

#' @title createNormHistogramCostExtractor
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;HistogramCostExtractor&gt; createNormHistogramCostExtractor(int flag, int nDummies, float defaultCost)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createNormHistogramCostExtractor <- function(flag = DIST_L2, nDummies = 25, defaultCost = 0.2) {
  .Call(`_ROpenCV_cv_createNormHistogramCostExtractor`, flag, nDummies, defaultCost)
}
