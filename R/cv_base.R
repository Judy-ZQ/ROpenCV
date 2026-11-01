# 由 tools/gen/emit.py 生成，请勿手改。

#' @title cubeRoot
#' @description ROpenCV 绑定。C++ 签名：<code>float cubeRoot(float val)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_cubeRoot <- function(val) {
  .Call(`_ROpenCV_cv_cubeRoot`, val)
}

#' @title fastAtan2
#' @description ROpenCV 绑定。C++ 签名：<code>float fastAtan2(float y, float x)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_fastAtan2 <- function(y, x) {
  .Call(`_ROpenCV_cv_fastAtan2`, y, x)
}

#' @title getIppVersion
#' @description ROpenCV 绑定。C++ 签名：<code>String getIppVersion()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getIppVersion <- function() {
  .Call(`_ROpenCV_cv_getIppVersion`)
}

#' @title setUseIPP
#' @description ROpenCV 绑定。C++ 签名：<code>void setUseIPP(bool flag)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_setUseIPP <- function(flag) {
  .Call(`_ROpenCV_cv_setUseIPP`, flag)
}

#' @title setUseIPP_NotExact
#' @description ROpenCV 绑定。C++ 签名：<code>void setUseIPP_NotExact(bool flag)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_setUseIPP_NotExact <- function(flag) {
  .Call(`_ROpenCV_cv_setUseIPP_NotExact`, flag)
}

#' @title useIPP
#' @description ROpenCV 绑定。C++ 签名：<code>bool useIPP()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_useIPP <- function() {
  .Call(`_ROpenCV_cv_useIPP`)
}

#' @title useIPP_NotExact
#' @description ROpenCV 绑定。C++ 签名：<code>bool useIPP_NotExact()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_useIPP_NotExact <- function() {
  .Call(`_ROpenCV_cv_useIPP_NotExact`)
}
