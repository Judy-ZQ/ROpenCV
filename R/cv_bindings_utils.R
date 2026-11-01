# 由 tools/gen/emit.py 生成，请勿手改。

#' @title dumpInputArray
#' @description ROpenCV 绑定。C++ 签名：<code>String dumpInputArray(InputArray argument)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_dumpInputArray <- function(argument) {
  .Call(`_ROpenCV_cv_dumpInputArray`, argument)
}

#' @title dumpInputArrayOfArrays
#' @description ROpenCV 绑定。C++ 签名：<code>String dumpInputArrayOfArrays(InputArrayOfArrays argument)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_dumpInputArrayOfArrays <- function(argument) {
  .Call(`_ROpenCV_cv_dumpInputArrayOfArrays`, argument)
}

#' @title dumpInputOutputArray
#' @description ROpenCV 绑定。C++ 签名：<code>String dumpInputOutputArray(InputOutputArray argument)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>argument</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_dumpInputOutputArray <- function(argument = NULL) {
  .Call(`_ROpenCV_cv_dumpInputOutputArray`, argument)
}

#' @title dumpInputOutputArrayOfArrays
#' @description ROpenCV 绑定。C++ 签名：<code>String dumpInputOutputArrayOfArrays(InputOutputArrayOfArrays argument)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_dumpInputOutputArrayOfArrays <- function(argument = NULL) {
  .Call(`_ROpenCV_cv_dumpInputOutputArrayOfArrays`, argument)
}

#' @title dumpVectorOfDouble
#' @description ROpenCV 绑定。C++ 签名：<code>String dumpVectorOfDouble(const std::vector&lt;double&gt;&amp; vec)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_dumpVectorOfDouble <- function(vec) {
  .Call(`_ROpenCV_cv_dumpVectorOfDouble`, vec)
}

#' @title dumpVectorOfInt
#' @description ROpenCV 绑定。C++ 签名：<code>String dumpVectorOfInt(const std::vector&lt;int&gt;&amp; vec)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_dumpVectorOfInt <- function(vec) {
  .Call(`_ROpenCV_cv_dumpVectorOfInt`, vec)
}

#' @title dumpVectorOfRect
#' @description ROpenCV 绑定。C++ 签名：<code>String dumpVectorOfRect(const std::vector&lt;Rect&gt;&amp; vec)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_dumpVectorOfRect <- function(vec) {
  .Call(`_ROpenCV_cv_dumpVectorOfRect`, vec)
}

#' @title getCacheDirectoryForDownloads
#' @description ROpenCV 绑定。C++ 签名：<code>cv::String getCacheDirectoryForDownloads()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getCacheDirectoryForDownloads <- function() {
  .Call(`_ROpenCV_cv_getCacheDirectoryForDownloads`)
}
