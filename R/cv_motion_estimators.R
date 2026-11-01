# 由 tools/gen/emit.py 生成，请勿手改。

#' @title leaveBiggestComponent
#' @description ROpenCV 绑定。C++ 签名：<code>std::vector&lt;int&gt; leaveBiggestComponent(std::vector&lt;ImageFeatures&gt; &amp; features, std::vector&lt;MatchesInfo&gt; &amp; pairwise_matches, float conf_threshold)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_leaveBiggestComponent <- function(features = NULL, pairwise_matches = NULL, conf_threshold) {
  .Call(`_ROpenCV_cv_leaveBiggestComponent`, features, pairwise_matches, conf_threshold)
}

#' @title matchesGraphAsString
#' @description ROpenCV 绑定。C++ 签名：<code>void matchesGraphAsString(std::vector&lt;String&gt; &amp; paths, std::vector&lt;MatchesInfo&gt; &amp; pairwise_matches, float conf_threshold)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_matchesGraphAsString <- function(paths = NULL, pairwise_matches = NULL, conf_threshold) {
  .Call(`_ROpenCV_cv_matchesGraphAsString`, paths, pairwise_matches, conf_threshold)
}

#' @title waveCorrect
#' @description ROpenCV 绑定。C++ 签名：<code>void waveCorrect(std::vector&lt;Mat&gt; &amp; rmats, WaveCorrectKind kind)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_waveCorrect <- function(rmats = NULL, kind) {
  .Call(`_ROpenCV_cv_waveCorrect`, rmats, kind)
}
