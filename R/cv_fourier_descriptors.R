# 由 tools/gen/emit.py 生成，请勿手改。

#' @title contourSampling
#' @description ROpenCV 绑定。C++ 签名：<code>void contourSampling(InputArray src, OutputArray out, int nbElt)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_contourSampling <- function(src, nbElt, dst = NULL) {
  .Call(`_ROpenCV_cv_contourSampling`, src, nbElt, dst)
}

#' @title createContourFitting
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;ContourFitting&gt; createContourFitting(int ctr, int fd)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createContourFitting <- function(ctr = 1024, fd = 16) {
  .Call(`_ROpenCV_cv_createContourFitting`, ctr, fd)
}

#' @title fourierDescriptor
#' @description ROpenCV 绑定。C++ 签名：<code>void fourierDescriptor(InputArray src, OutputArray dst, int nbElt, int nbFD)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_fourierDescriptor <- function(src, nbElt = -1, nbFD = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_fourierDescriptor`, src, nbElt, nbFD, dst)
}

#' @title transformFD
#' @description ROpenCV 绑定。C++ 签名：<code>void transformFD(InputArray src, InputArray t, OutputArray dst, bool fdContour)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_transformFD <- function(src, t, fdContour = TRUE, dst = NULL) {
  .Call(`_ROpenCV_cv_transformFD`, src, t, fdContour, dst)
}
