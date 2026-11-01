# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createRFFeatureGetter
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;RFFeatureGetter&gt; createRFFeatureGetter()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createRFFeatureGetter <- function() {
  .Call(`_ROpenCV_cv_createRFFeatureGetter`)
}

#' @title createStructuredEdgeDetection
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;StructuredEdgeDetection&gt; createStructuredEdgeDetection(const String &amp; model, Ptr&lt;const RFFeatureGetter&gt; howToGetFeatures)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createStructuredEdgeDetection <- function(model, howToGetFeatures = NULL) {
  .Call(`_ROpenCV_cv_createStructuredEdgeDetection`, model, howToGetFeatures)
}
