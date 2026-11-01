# 由 tools/gen/emit.py 生成，请勿手改。

#' @title colormap
#' @description ROpenCV 绑定。C++ 签名：<code>void colormap(const Mat&amp; quantized, Mat&amp; dst)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_colormap <- function(quantized) {
  .Call(`_ROpenCV_cv_colormap`, quantized)
}

#' @title getDefaultLINE
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;linemod::Detector&gt; getDefaultLINE()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getDefaultLINE <- function() {
  .Call(`_ROpenCV_cv_getDefaultLINE`)
}

#' @title getDefaultLINEMOD
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;linemod::Detector&gt; getDefaultLINEMOD()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getDefaultLINEMOD <- function() {
  .Call(`_ROpenCV_cv_getDefaultLINEMOD`)
}
