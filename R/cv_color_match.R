# 由 tools/gen/emit.py 生成，请勿手改。

#' @title colorMatchTemplate
#' @description ROpenCV 绑定。C++ 签名：<code>void colorMatchTemplate(InputArray img, InputArray templ, OutputArray result)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_colorMatchTemplate <- function(img, templ, dst = NULL) {
  .Call(`_ROpenCV_cv_colorMatchTemplate`, img, templ, dst)
}

#' @title createQuaternionImage
#' @description ROpenCV 绑定。C++ 签名：<code>void createQuaternionImage(InputArray img, OutputArray qimg)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_createQuaternionImage <- function(img, dst = NULL) {
  .Call(`_ROpenCV_cv_createQuaternionImage`, img, dst)
}

#' @title qconj
#' @description ROpenCV 绑定。C++ 签名：<code>void qconj(InputArray qimg, OutputArray qcimg)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_qconj <- function(qimg, dst = NULL) {
  .Call(`_ROpenCV_cv_qconj`, qimg, dst)
}

#' @title qdft
#' @description ROpenCV 绑定。C++ 签名：<code>void qdft(InputArray img, OutputArray qimg, int flags, bool sideLeft)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_qdft <- function(img, flags, sideLeft, dst = NULL) {
  .Call(`_ROpenCV_cv_qdft`, img, flags, sideLeft, dst)
}

#' @title qmultiply
#' @description ROpenCV 绑定。C++ 签名：<code>void qmultiply(InputArray src1, InputArray src2, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_qmultiply <- function(src1, src2, dst = NULL) {
  .Call(`_ROpenCV_cv_qmultiply`, src1, src2, dst)
}

#' @title qunitary
#' @description ROpenCV 绑定。C++ 签名：<code>void qunitary(InputArray qimg, OutputArray qnimg)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_qunitary <- function(qimg, dst = NULL) {
  .Call(`_ROpenCV_cv_qunitary`, qimg, dst)
}
