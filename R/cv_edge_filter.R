# 由 tools/gen/emit.py 生成，请勿手改。

#' @title amFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void amFilter(InputArray joint, InputArray src, OutputArray dst, double sigma_s, double sigma_r, bool adjust_outliers)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_amFilter <- function(joint, src, sigma_s, sigma_r, adjust_outliers = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_amFilter`, joint, src, sigma_s, sigma_r, adjust_outliers, dst)
}

#' @title bilateralTextureFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void bilateralTextureFilter(InputArray src, OutputArray dst, int fr, int numIter, double sigmaAlpha, double sigmaAvg)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_bilateralTextureFilter <- function(src, fr = 3, numIter = 1, sigmaAlpha = -1, sigmaAvg = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_bilateralTextureFilter`, src, fr, numIter, sigmaAlpha, sigmaAvg, dst)
}

#' @title createAMFilter
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;AdaptiveManifoldFilter&gt; createAMFilter(double sigma_s, double sigma_r, bool adjust_outliers)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createAMFilter <- function(sigma_s, sigma_r, adjust_outliers = FALSE) {
  .Call(`_ROpenCV_cv_createAMFilter`, sigma_s, sigma_r, adjust_outliers)
}

#' @title createDTFilter
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;DTFilter&gt; createDTFilter(InputArray guide, double sigmaSpatial, double sigmaColor, int mode, int numIters)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createDTFilter <- function(guide, sigmaSpatial, sigmaColor, mode = DTF_NC, numIters = 3) {
  .Call(`_ROpenCV_cv_createDTFilter`, guide, sigmaSpatial, sigmaColor, mode, numIters)
}

#' @title createFastBilateralSolverFilter
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;FastBilateralSolverFilter&gt; createFastBilateralSolverFilter(InputArray guide, double sigma_spatial, double sigma_luma, double sigma_chroma, double lambda, int num_iter, double max_tol)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createFastBilateralSolverFilter <- function(guide, sigma_spatial, sigma_luma, sigma_chroma, lambda = 128.0, num_iter = 25, max_tol = 1e-5) {
  .Call(`_ROpenCV_cv_createFastBilateralSolverFilter`, guide, sigma_spatial, sigma_luma, sigma_chroma, lambda, num_iter, max_tol)
}

#' @title createFastGlobalSmootherFilter
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;FastGlobalSmootherFilter&gt; createFastGlobalSmootherFilter(InputArray guide, double lambda, double sigma_color, double lambda_attenuation, int num_iter)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createFastGlobalSmootherFilter <- function(guide, lambda, sigma_color, lambda_attenuation = 0.25, num_iter = 3) {
  .Call(`_ROpenCV_cv_createFastGlobalSmootherFilter`, guide, lambda, sigma_color, lambda_attenuation, num_iter)
}

#' @title createGuidedFilter
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;GuidedFilter&gt; createGuidedFilter(InputArray guide, int radius, double eps, double scale)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createGuidedFilter <- function(guide, radius, eps, scale = 1.0) {
  .Call(`_ROpenCV_cv_createGuidedFilter`, guide, radius, eps, scale)
}

#' @title dtFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void dtFilter(InputArray guide, InputArray src, OutputArray dst, double sigmaSpatial, double sigmaColor, int mode, int numIters)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_dtFilter <- function(guide, src, sigmaSpatial, sigmaColor, mode = DTF_NC, numIters = 3, dst = NULL) {
  .Call(`_ROpenCV_cv_dtFilter`, guide, src, sigmaSpatial, sigmaColor, mode, numIters, dst)
}

#' @title fastBilateralSolverFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void fastBilateralSolverFilter(InputArray guide, InputArray src, InputArray confidence, OutputArray dst, double sigma_spatial, double sigma_luma, double sigma_chroma, double lambda, int num_iter, double max_tol)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_fastBilateralSolverFilter <- function(guide, src, confidence, sigma_spatial = 8, sigma_luma = 8, sigma_chroma = 8, lambda = 128.0, num_iter = 25, max_tol = 1e-5, dst = NULL) {
  .Call(`_ROpenCV_cv_fastBilateralSolverFilter`, guide, src, confidence, sigma_spatial, sigma_luma, sigma_chroma, lambda, num_iter, max_tol, dst)
}

#' @title fastGlobalSmootherFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void fastGlobalSmootherFilter(InputArray guide, InputArray src, OutputArray dst, double lambda, double sigma_color, double lambda_attenuation, int num_iter)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_fastGlobalSmootherFilter <- function(guide, src, lambda, sigma_color, lambda_attenuation = 0.25, num_iter = 3, dst = NULL) {
  .Call(`_ROpenCV_cv_fastGlobalSmootherFilter`, guide, src, lambda, sigma_color, lambda_attenuation, num_iter, dst)
}

#' @title guidedFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void guidedFilter(InputArray guide, InputArray src, OutputArray dst, int radius, double eps, int dDepth, double scale)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_guidedFilter <- function(guide, src, radius, eps, dDepth = -1, scale = 1.0, dst = NULL) {
  .Call(`_ROpenCV_cv_guidedFilter`, guide, src, radius, eps, dDepth, scale, dst)
}

#' @title jointBilateralFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void jointBilateralFilter(InputArray joint, InputArray src, OutputArray dst, int d, double sigmaColor, double sigmaSpace, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_jointBilateralFilter <- function(joint, src, d, sigmaColor, sigmaSpace, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_jointBilateralFilter`, joint, src, d, sigmaColor, sigmaSpace, borderType, dst)
}

#' @title l0Smooth
#' @description ROpenCV 绑定。C++ 签名：<code>void l0Smooth(InputArray src, OutputArray dst, double lambda, double kappa)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_l0Smooth <- function(src, lambda = 0.02, kappa = 2.0, dst = NULL) {
  .Call(`_ROpenCV_cv_l0Smooth`, src, lambda, kappa, dst)
}

#' @title rollingGuidanceFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void rollingGuidanceFilter(InputArray src, OutputArray dst, int d, double sigmaColor, double sigmaSpace, int numOfIter, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_rollingGuidanceFilter <- function(src, d = -1, sigmaColor = 25, sigmaSpace = 3, numOfIter = 4, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_rollingGuidanceFilter`, src, d, sigmaColor, sigmaSpace, numOfIter, borderType, dst)
}
