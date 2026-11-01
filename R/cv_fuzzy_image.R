# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createKernel
#' @description ROpenCV 绑定。C++ 签名：<code>void createKernel(InputArray A, InputArray B, OutputArray kernel, const int chn)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_createKernel__0 <- function(A, B, chn, dst = NULL) {
  .Call(`_ROpenCV_cv_createKernel__0`, A, B, chn, dst)
}

#' @title createKernel
#' @description ROpenCV 绑定。C++ 签名：<code>void createKernel(int function, int radius, OutputArray kernel, const int chn)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_createKernel__1 <- function(function_, radius, chn, dst = NULL) {
  .Call(`_ROpenCV_cv_createKernel__1`, function_, radius, chn, dst)
}

# cv_createKernel
#' @rdname cv_createKernel
#' @export
cv_createKernel <- local({
  .sigs <- list(
    list(f = .ropecv_cv_createKernel__0, p = c(A = "mat", B = "mat", chn = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "A, B, chn, dst = NULL"),
    list(f = .ropecv_cv_createKernel__1, p = c(function_ = "int", radius = "int", chn = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "function_, radius, chn, dst = NULL")
  )
  function(...) .ropecv_pick("cv_createKernel", .sigs, list(...))
})

#' @title filter
#' @description ROpenCV 绑定。C++ 签名：<code>void filter(InputArray image, InputArray kernel, OutputArray output)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_filter <- function(image, kernel, dst = NULL) {
  .Call(`_ROpenCV_cv_filter`, image, kernel, dst)
}

#' @title inpaint
#' @description ROpenCV 绑定。C++ 签名：<code>void inpaint(InputArray image, InputArray mask, OutputArray output, int radius, int function, int algorithm)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_ft_inpaint <- function(image, mask = NULL, radius, function_, algorithm, dst = NULL) {
  .Call(`_ROpenCV_cv_ft_inpaint`, image, mask, radius, function_, algorithm, dst)
}
