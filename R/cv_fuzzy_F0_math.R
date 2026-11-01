# 由 tools/gen/emit.py 生成，请勿手改。

#' @title FT02D_FL_process
#' @description ROpenCV 绑定。C++ 签名：<code>void FT02D_FL_process(InputArray matrix, const int radius, OutputArray output)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_FT02D_FL_process <- function(matrix, radius, dst = NULL) {
  .Call(`_ROpenCV_cv_FT02D_FL_process`, matrix, radius, dst)
}

#' @title FT02D_FL_process_float
#' @description ROpenCV 绑定。C++ 签名：<code>void FT02D_FL_process_float(InputArray matrix, const int radius, OutputArray output)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_FT02D_FL_process_float <- function(matrix, radius, dst = NULL) {
  .Call(`_ROpenCV_cv_FT02D_FL_process_float`, matrix, radius, dst)
}

#' @title FT02D_components
#' @description ROpenCV 绑定。C++ 签名：<code>void FT02D_components(InputArray matrix, InputArray kernel, OutputArray components, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_FT02D_components <- function(matrix, kernel, mask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_FT02D_components`, matrix, kernel, mask, dst)
}

#' @title FT02D_inverseFT
#' @description ROpenCV 绑定。C++ 签名：<code>void FT02D_inverseFT(InputArray components, InputArray kernel, OutputArray output, int width, int height)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_FT02D_inverseFT <- function(components, kernel, width, height, dst = NULL) {
  .Call(`_ROpenCV_cv_FT02D_inverseFT`, components, kernel, width, height, dst)
}

#' @title FT02D_iteration
#' @description ROpenCV 绑定。C++ 签名：<code>int FT02D_iteration(InputArray matrix, InputArray kernel, OutputArray output, InputArray mask, OutputArray maskOutput, bool firstStop)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_FT02D_iteration <- function(matrix, kernel, mask = NULL, firstStop, output = NULL, maskOutput = NULL) {
  .Call(`_ROpenCV_cv_FT02D_iteration`, matrix, kernel, mask, firstStop, output, maskOutput)
}

#' @title FT02D_process
#' @description ROpenCV 绑定。C++ 签名：<code>void FT02D_process(InputArray matrix, InputArray kernel, OutputArray output, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_FT02D_process <- function(matrix, kernel, mask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_FT02D_process`, matrix, kernel, mask, dst)
}
