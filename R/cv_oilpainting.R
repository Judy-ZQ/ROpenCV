# 由 tools/gen/emit.py 生成，请勿手改。

#' @title oilPainting
#' @description ROpenCV 绑定。C++ 签名：<code>void oilPainting(InputArray src, OutputArray dst, int size, int dynRatio)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_oilPainting__0 <- function(src, size, dynRatio, dst = NULL) {
  .Call(`_ROpenCV_cv_oilPainting__0`, src, size, dynRatio, dst)
}

#' @title oilPainting
#' @description ROpenCV 绑定。C++ 签名：<code>void oilPainting(InputArray src, OutputArray dst, int size, int dynRatio, int code)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_oilPainting__1 <- function(src, size, dynRatio, code, dst = NULL) {
  .Call(`_ROpenCV_cv_oilPainting__1`, src, size, dynRatio, code, dst)
}

# cv_oilPainting
#' @rdname cv_oilPainting
#' @export
cv_oilPainting <- local({
  .sigs <- list(
    list(f = .ropecv_cv_oilPainting__0, p = c(src = "mat", size = "int", dynRatio = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "src, size, dynRatio, dst = NULL"),
    list(f = .ropecv_cv_oilPainting__1, p = c(src = "mat", size = "int", dynRatio = "int", code = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE), s = "src, size, dynRatio, code, dst = NULL")
  )
  function(...) .ropecv_pick("cv_oilPainting", .sigs, list(...))
})
