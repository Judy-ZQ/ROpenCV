# 由 tools/gen/emit.py 生成，请勿手改。

#' @title extendDictionary
#' @description ROpenCV 绑定。C++ 签名：<code>Dictionary extendDictionary(int nMarkers, int markerSize, const Dictionary &amp; baseDictionary, int randomSeed)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_extendDictionary <- function(nMarkers, markerSize, baseDictionary = NULL, randomSeed = 0) {
  .Call(`_ROpenCV_cv_extendDictionary`, nMarkers, markerSize, baseDictionary, randomSeed)
}

#' @title getPredefinedDictionary
#' @description ROpenCV 绑定。C++ 签名：<code>Dictionary getPredefinedDictionary(int dict)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getPredefinedDictionary <- function(dict) {
  .Call(`_ROpenCV_cv_getPredefinedDictionary`, dict)
}
