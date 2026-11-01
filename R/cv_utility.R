# 由 tools/gen/emit.py 生成，请勿手改。

#' @title addSamplesDataSearchPath
#' @description ROpenCV 绑定。C++ 签名：<code>void addSamplesDataSearchPath(const cv::String&amp; path)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_addSamplesDataSearchPath <- function(path) {
  .Call(`_ROpenCV_cv_addSamplesDataSearchPath`, path)
}

#' @title addSamplesDataSearchSubDirectory
#' @description ROpenCV 绑定。C++ 签名：<code>void addSamplesDataSearchSubDirectory(const cv::String&amp; subdir)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_addSamplesDataSearchSubDirectory <- function(subdir) {
  .Call(`_ROpenCV_cv_addSamplesDataSearchSubDirectory`, subdir)
}

#' @title checkHardwareSupport
#' @description ROpenCV 绑定。C++ 签名：<code>bool checkHardwareSupport(int feature)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_checkHardwareSupport <- function(feature) {
  .Call(`_ROpenCV_cv_checkHardwareSupport`, feature)
}

#' @title findFile
#' @description ROpenCV 绑定。C++ 签名：<code>cv::String findFile(const cv::String&amp; relative_path, bool required, bool silentMode)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_findFile <- function(relative_path, required = TRUE, silentMode = FALSE) {
  .Call(`_ROpenCV_cv_findFile`, relative_path, required, silentMode)
}

#' @title findFileOrKeep
#' @description ROpenCV 绑定。C++ 签名：<code>cv::String findFileOrKeep(const cv::String&amp; relative_path, bool silentMode)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_findFileOrKeep <- function(relative_path, silentMode = FALSE) {
  .Call(`_ROpenCV_cv_findFileOrKeep`, relative_path, silentMode)
}

#' @title getBuildInformation
#' @description ROpenCV 绑定。C++ 签名：<code>const String&amp; getBuildInformation()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getBuildInformation <- function() {
  .Call(`_ROpenCV_cv_getBuildInformation`)
}

#' @title getCPUFeaturesLine
#' @description ROpenCV 绑定。C++ 签名：<code>std::string getCPUFeaturesLine()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getCPUFeaturesLine <- function() {
  .Call(`_ROpenCV_cv_getCPUFeaturesLine`)
}

#' @title getCPUTickCount
#' @description ROpenCV 绑定。C++ 签名：<code>int64 getCPUTickCount()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getCPUTickCount <- function() {
  .Call(`_ROpenCV_cv_getCPUTickCount`)
}

#' @title getDefaultAlgorithmHint
#' @description ROpenCV 绑定。C++ 签名：<code>AlgorithmHint getDefaultAlgorithmHint()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getDefaultAlgorithmHint <- function() {
  .Call(`_ROpenCV_cv_getDefaultAlgorithmHint`)
}

#' @title getHardwareFeatureName
#' @description ROpenCV 绑定。C++ 签名：<code>String getHardwareFeatureName(int feature)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getHardwareFeatureName <- function(feature) {
  .Call(`_ROpenCV_cv_getHardwareFeatureName`, feature)
}

#' @title getNumThreads
#' @description ROpenCV 绑定。C++ 签名：<code>int getNumThreads()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getNumThreads <- function() {
  .Call(`_ROpenCV_cv_getNumThreads`)
}

#' @title getNumberOfCPUs
#' @description ROpenCV 绑定。C++ 签名：<code>int getNumberOfCPUs()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getNumberOfCPUs <- function() {
  .Call(`_ROpenCV_cv_getNumberOfCPUs`)
}

#' @title getThreadNum
#' @description ROpenCV 绑定。C++ 签名：<code>int getThreadNum()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getThreadNum <- function() {
  .Call(`_ROpenCV_cv_getThreadNum`)
}

#' @title getTickCount
#' @description ROpenCV 绑定。C++ 签名：<code>int64 getTickCount()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getTickCount <- function() {
  .Call(`_ROpenCV_cv_getTickCount`)
}

#' @title getTickFrequency
#' @description ROpenCV 绑定。C++ 签名：<code>double getTickFrequency()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getTickFrequency <- function() {
  .Call(`_ROpenCV_cv_getTickFrequency`)
}

#' @title getVersionMajor
#' @description ROpenCV 绑定。C++ 签名：<code>int getVersionMajor()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getVersionMajor <- function() {
  .Call(`_ROpenCV_cv_getVersionMajor`)
}

#' @title getVersionMinor
#' @description ROpenCV 绑定。C++ 签名：<code>int getVersionMinor()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getVersionMinor <- function() {
  .Call(`_ROpenCV_cv_getVersionMinor`)
}

#' @title getVersionRevision
#' @description ROpenCV 绑定。C++ 签名：<code>int getVersionRevision()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getVersionRevision <- function() {
  .Call(`_ROpenCV_cv_getVersionRevision`)
}

#' @title getVersionString
#' @description ROpenCV 绑定。C++ 签名：<code>String getVersionString()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getVersionString <- function() {
  .Call(`_ROpenCV_cv_getVersionString`)
}

#' @title glob
#' @description ROpenCV 绑定。C++ 签名：<code>void glob(String pattern, std::vector&lt;String&gt;&amp; result, bool recursive)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_glob <- function(pattern, result = NULL, recursive = FALSE) {
  .Call(`_ROpenCV_cv_glob`, pattern, result, recursive)
}

#' @title setNumThreads
#' @description ROpenCV 绑定。C++ 签名：<code>void setNumThreads(int nthreads)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_setNumThreads <- function(nthreads) {
  .Call(`_ROpenCV_cv_setNumThreads`, nthreads)
}

#' @title setUseOptimized
#' @description ROpenCV 绑定。C++ 签名：<code>void setUseOptimized(bool onoff)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_setUseOptimized <- function(onoff) {
  .Call(`_ROpenCV_cv_setUseOptimized`, onoff)
}

#' @title useOptimized
#' @description ROpenCV 绑定。C++ 签名：<code>bool useOptimized()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_useOptimized <- function() {
  .Call(`_ROpenCV_cv_useOptimized`)
}
