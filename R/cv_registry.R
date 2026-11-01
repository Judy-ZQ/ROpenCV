# 由 tools/gen/emit.py 生成，请勿手改。

#' @title getBackendName
#' @description ROpenCV 绑定。C++ 签名：<code>cv::String getBackendName(VideoCaptureAPIs api)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getBackendName <- function(api) {
  .Call(`_ROpenCV_cv_getBackendName`, api)
}

#' @title getCameraBackendPluginVersion
#' @description ROpenCV 绑定。C++ 签名：<code>std::string getCameraBackendPluginVersion(VideoCaptureAPIs api, int&amp; version_ABI, int&amp; version_API)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getCameraBackendPluginVersion <- function(api) {
  .Call(`_ROpenCV_cv_getCameraBackendPluginVersion`, api)
}

#' @title getStreamBackendPluginVersion
#' @description ROpenCV 绑定。C++ 签名：<code>std::string getStreamBackendPluginVersion(VideoCaptureAPIs api, int&amp; version_ABI, int&amp; version_API)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getStreamBackendPluginVersion <- function(api) {
  .Call(`_ROpenCV_cv_getStreamBackendPluginVersion`, api)
}

#' @title getWriterBackendPluginVersion
#' @description ROpenCV 绑定。C++ 签名：<code>std::string getWriterBackendPluginVersion(VideoCaptureAPIs api, int&amp; version_ABI, int&amp; version_API)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getWriterBackendPluginVersion <- function(api) {
  .Call(`_ROpenCV_cv_getWriterBackendPluginVersion`, api)
}

#' @title hasBackend
#' @description ROpenCV 绑定。C++ 签名：<code>bool hasBackend(VideoCaptureAPIs api)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_hasBackend <- function(api) {
  .Call(`_ROpenCV_cv_hasBackend`, api)
}

#' @title isBackendBuiltIn
#' @description ROpenCV 绑定。C++ 签名：<code>bool isBackendBuiltIn(VideoCaptureAPIs api)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_isBackendBuiltIn <- function(api) {
  .Call(`_ROpenCV_cv_isBackendBuiltIn`, api)
}
