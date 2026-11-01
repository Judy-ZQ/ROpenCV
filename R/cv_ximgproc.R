# 由 tools/gen/emit.py 生成，请勿手改。

#' @title anisotropicDiffusion
#' @description ROpenCV 绑定。C++ 签名：<code>void anisotropicDiffusion(InputArray src, OutputArray dst, float alpha, float K, int niters)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_anisotropicDiffusion <- function(src, alpha, K, niters, dst = NULL) {
  .Call(`_ROpenCV_cv_anisotropicDiffusion`, src, alpha, K, niters, dst)
}

#' @title niBlackThreshold
#' @description ROpenCV 绑定。C++ 签名：<code>void niBlackThreshold(InputArray _src, OutputArray _dst, double maxValue, int type, int blockSize, double k, int binarizationMethod, double r)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_niBlackThreshold <- function(src, maxValue, type, blockSize, k, binarizationMethod = BINARIZATION_NIBLACK, r = 128, dst = NULL) {
  .Call(`_ROpenCV_cv_niBlackThreshold`, src, maxValue, type, blockSize, k, binarizationMethod, r, dst)
}

#' @title thinning
#' @description ROpenCV 绑定。C++ 签名：<code>void thinning(InputArray src, OutputArray dst, int thinningType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_thinning <- function(src, thinningType = THINNING_ZHANGSUEN, dst = NULL) {
  .Call(`_ROpenCV_cv_thinning`, src, thinningType, dst)
}
