# 由 tools/gen/emit.py 生成，请勿手改。

#' @title setParallelForBackend
#' @description ROpenCV 绑定。C++ 签名：<code>bool setParallelForBackend(const std::string&amp; backendName, bool propagateNumThreads)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_setParallelForBackend <- function(backendName, propagateNumThreads = TRUE) {
  .Call(`_ROpenCV_cv_setParallelForBackend`, backendName, propagateNumThreads)
}
