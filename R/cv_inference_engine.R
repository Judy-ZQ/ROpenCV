# 由 tools/gen/emit.py 生成，请勿手改。

#' @title getInferenceEngineBackendType
#' @description ROpenCV 绑定。C++ 签名：<code>cv::String getInferenceEngineBackendType()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getInferenceEngineBackendType <- function() {
  .Call(`_ROpenCV_cv_getInferenceEngineBackendType`)
}

#' @title getInferenceEngineCPUType
#' @description ROpenCV 绑定。C++ 签名：<code>cv::String getInferenceEngineCPUType()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getInferenceEngineCPUType <- function() {
  .Call(`_ROpenCV_cv_getInferenceEngineCPUType`)
}

#' @title getInferenceEngineVPUType
#' @description ROpenCV 绑定。C++ 签名：<code>cv::String getInferenceEngineVPUType()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getInferenceEngineVPUType <- function() {
  .Call(`_ROpenCV_cv_getInferenceEngineVPUType`)
}

#' @title releaseHDDLPlugin
#' @description ROpenCV 绑定。C++ 签名：<code>void releaseHDDLPlugin()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_releaseHDDLPlugin <- function() {
  .Call(`_ROpenCV_cv_releaseHDDLPlugin`)
}

#' @title resetMyriadDevice
#' @description ROpenCV 绑定。C++ 签名：<code>void resetMyriadDevice()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_resetMyriadDevice <- function() {
  .Call(`_ROpenCV_cv_resetMyriadDevice`)
}

#' @title setInferenceEngineBackendType
#' @description ROpenCV 绑定。C++ 签名：<code>cv::String setInferenceEngineBackendType(const cv::String&amp; newBackendType)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_setInferenceEngineBackendType <- function(newBackendType) {
  .Call(`_ROpenCV_cv_setInferenceEngineBackendType`, newBackendType)
}
