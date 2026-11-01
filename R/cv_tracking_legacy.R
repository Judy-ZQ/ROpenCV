# 由 tools/gen/emit.py 生成，请勿手改。

#' @title upgradeTrackingAPI
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;cv::Tracker&gt; upgradeTrackingAPI(const Ptr&lt;legacy::Tracker&gt;&amp; legacy_tracker)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_upgradeTrackingAPI <- function(legacy_tracker) {
  .Call(`_ROpenCV_cv_upgradeTrackingAPI`, legacy_tracker)
}
