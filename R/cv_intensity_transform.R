# 由 tools/gen/emit.py 生成，请勿手改。

#' @title BIMEF
#' @description ROpenCV 绑定。C++ 签名：<code>void BIMEF(InputArray input, OutputArray output, float mu, float a, float b)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_BIMEF__0 <- function(input, mu = 0.5, a = -0.3293, b = 1.1258, dst = NULL) {
  .Call(`_ROpenCV_cv_BIMEF__0`, input, mu, a, b, dst)
}

#' @title BIMEF
#' @description ROpenCV 绑定。C++ 签名：<code>void BIMEF(InputArray input, OutputArray output, float k, float mu, float a, float b)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_BIMEF__1 <- function(input, k, mu, a, b, dst = NULL) {
  .Call(`_ROpenCV_cv_BIMEF__1`, input, k, mu, a, b, dst)
}

# cv_BIMEF
#' @rdname cv_BIMEF
#' @export
cv_BIMEF <- local({
  .sigs <- list(
    list(f = .ropecv_cv_BIMEF__0, p = c(input = "mat", mu = "dbl", a = "dbl", b = "dbl", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "input, mu = 0.5, a = -0.3293, b = 1.1258, dst = NULL"),
    list(f = .ropecv_cv_BIMEF__1, p = c(input = "mat", k = "dbl", mu = "dbl", a = "dbl", b = "dbl", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE), s = "input, k, mu, a, b, dst = NULL")
  )
  function(...) .ropecv_pick("cv_BIMEF", .sigs, list(...))
})

#' @title autoscaling
#' @description ROpenCV 绑定。C++ 签名：<code>void autoscaling(const Mat input, Mat&amp; output)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_autoscaling <- function(input, output = NULL) {
  .Call(`_ROpenCV_cv_autoscaling`, input, output)
}

#' @title contrastStretching
#' @description ROpenCV 绑定。C++ 签名：<code>void contrastStretching(const Mat input, Mat&amp; output, const int r1, const int s1, const int r2, const int s2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_contrastStretching <- function(input, output = NULL, r1, s1, r2, s2) {
  .Call(`_ROpenCV_cv_contrastStretching`, input, output, r1, s1, r2, s2)
}

#' @title gammaCorrection
#' @description ROpenCV 绑定。C++ 签名：<code>void gammaCorrection(const Mat input, Mat&amp; output, const float gamma)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_gammaCorrection <- function(input, output = NULL, gamma) {
  .Call(`_ROpenCV_cv_gammaCorrection`, input, output, gamma)
}

#' @title logTransform
#' @description ROpenCV 绑定。C++ 签名：<code>void logTransform(const Mat input, Mat&amp; output)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_logTransform <- function(input, output = NULL) {
  .Call(`_ROpenCV_cv_logTransform`, input, output)
}
