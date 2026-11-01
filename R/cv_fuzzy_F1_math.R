# 由 tools/gen/emit.py 生成，请勿手改。

#' @title FT12D_components
#' @description ROpenCV 绑定。C++ 签名：<code>void FT12D_components(InputArray matrix, InputArray kernel, OutputArray components)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_FT12D_components <- function(matrix, kernel, dst = NULL) {
  .Call(`_ROpenCV_cv_FT12D_components`, matrix, kernel, dst)
}

#' @title FT12D_createPolynomMatrixHorizontal
#' @description ROpenCV 绑定。C++ 签名：<code>void FT12D_createPolynomMatrixHorizontal(int radius, OutputArray matrix, const int chn)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_FT12D_createPolynomMatrixHorizontal <- function(radius, chn, dst = NULL) {
  .Call(`_ROpenCV_cv_FT12D_createPolynomMatrixHorizontal`, radius, chn, dst)
}

#' @title FT12D_createPolynomMatrixVertical
#' @description ROpenCV 绑定。C++ 签名：<code>void FT12D_createPolynomMatrixVertical(int radius, OutputArray matrix, const int chn)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_FT12D_createPolynomMatrixVertical <- function(radius, chn, dst = NULL) {
  .Call(`_ROpenCV_cv_FT12D_createPolynomMatrixVertical`, radius, chn, dst)
}

#' @title FT12D_inverseFT
#' @description ROpenCV 绑定。C++ 签名：<code>void FT12D_inverseFT(InputArray components, InputArray kernel, OutputArray output, int width, int height)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_FT12D_inverseFT <- function(components, kernel, width, height, dst = NULL) {
  .Call(`_ROpenCV_cv_FT12D_inverseFT`, components, kernel, width, height, dst)
}

#' @title FT12D_polynomial
#' @description ROpenCV 绑定。C++ 签名：<code>void FT12D_polynomial(InputArray matrix, InputArray kernel, OutputArray c00, OutputArray c10, OutputArray c01, OutputArray components, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_FT12D_polynomial <- function(matrix, kernel, mask = NULL, c00 = NULL, c10 = NULL, c01 = NULL, components = NULL) {
  .Call(`_ROpenCV_cv_FT12D_polynomial`, matrix, kernel, mask, c00, c10, c01, components)
}

#' @title FT12D_process
#' @description ROpenCV 绑定。C++ 签名：<code>void FT12D_process(InputArray matrix, InputArray kernel, OutputArray output, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_FT12D_process <- function(matrix, kernel, mask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_FT12D_process`, matrix, kernel, mask, dst)
}
