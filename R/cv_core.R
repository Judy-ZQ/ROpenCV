# 由 tools/gen/emit.py 生成，请勿手改。

#' @title LUT
#' @description ROpenCV 绑定。C++ 签名：<code>void LUT(InputArray src, InputArray lut, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_LUT <- function(src, lut, dst = NULL) {
  .Call(`_ROpenCV_cv_LUT`, src, lut, dst)
}

#' @title Mahalanobis
#' @description ROpenCV 绑定。C++ 签名：<code>double Mahalanobis(InputArray v1, InputArray v2, InputArray icovar)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_Mahalanobis <- function(v1, v2, icovar) {
  .Call(`_ROpenCV_cv_Mahalanobis`, v1, v2, icovar)
}

#' @title PCABackProject
#' @description ROpenCV 绑定。C++ 签名：<code>void PCABackProject(InputArray data, InputArray mean, InputArray eigenvectors, OutputArray result)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_PCABackProject <- function(data, mean, eigenvectors, dst = NULL) {
  .Call(`_ROpenCV_cv_PCABackProject`, data, mean, eigenvectors, dst)
}

#' @title PCACompute
#' @description ROpenCV 绑定。C++ 签名：<code>void PCACompute(InputArray data, InputOutputArray mean, OutputArray eigenvectors, int maxComponents)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_PCACompute__0 <- function(data, mean = NULL, maxComponents = 0, eigenvectors = NULL) {
  .Call(`_ROpenCV_cv_PCACompute__0`, data, mean, maxComponents, eigenvectors)
}

#' @title PCACompute
#' @description ROpenCV 绑定。C++ 签名：<code>void PCACompute(InputArray data, InputOutputArray mean, OutputArray eigenvectors, double retainedVariance)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_PCACompute__1 <- function(data, mean = NULL, retainedVariance, eigenvectors = NULL) {
  .Call(`_ROpenCV_cv_PCACompute__1`, data, mean, retainedVariance, eigenvectors)
}

#' @title PCACompute
#' @description ROpenCV 绑定。C++ 签名：<code>void PCACompute(InputArray data, InputOutputArray mean, OutputArray eigenvectors, OutputArray eigenvalues, int maxComponents)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_PCACompute__2 <- function(data, mean = NULL, maxComponents = 0, eigenvectors = NULL, eigenvalues = NULL) {
  .Call(`_ROpenCV_cv_PCACompute__2`, data, mean, maxComponents, eigenvectors, eigenvalues)
}

#' @title PCACompute
#' @description ROpenCV 绑定。C++ 签名：<code>void PCACompute(InputArray data, InputOutputArray mean, OutputArray eigenvectors, OutputArray eigenvalues, double retainedVariance)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_PCACompute__3 <- function(data, mean = NULL, retainedVariance, eigenvectors = NULL, eigenvalues = NULL) {
  .Call(`_ROpenCV_cv_PCACompute__3`, data, mean, retainedVariance, eigenvectors, eigenvalues)
}

# cv_PCACompute
#' @rdname cv_PCACompute
#' @export
cv_PCACompute <- local({
  .sigs <- list(
    list(f = .ropecv_cv_PCACompute__0, p = c(data = "mat", mean = "mat", maxComponents = "int", eigenvectors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "data, mean = NULL, maxComponents = 0, eigenvectors = NULL"),
    list(f = .ropecv_cv_PCACompute__1, p = c(data = "mat", mean = "mat", retainedVariance = "dbl", eigenvectors = "mat"), r = c(TRUE, FALSE, TRUE, FALSE), s = "data, mean = NULL, retainedVariance, eigenvectors = NULL"),
    list(f = .ropecv_cv_PCACompute__2, p = c(data = "mat", mean = "mat", maxComponents = "int", eigenvectors = "mat", eigenvalues = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "data, mean = NULL, maxComponents = 0, eigenvectors = NULL, eigenvalues = NULL"),
    list(f = .ropecv_cv_PCACompute__3, p = c(data = "mat", mean = "mat", retainedVariance = "dbl", eigenvectors = "mat", eigenvalues = "mat"), r = c(TRUE, FALSE, TRUE, FALSE, FALSE), s = "data, mean = NULL, retainedVariance, eigenvectors = NULL, eigenvalues = NULL")
  )
  function(...) .ropecv_pick("cv_PCACompute", .sigs, list(...))
})

#' @title PCAProject
#' @description ROpenCV 绑定。C++ 签名：<code>void PCAProject(InputArray data, InputArray mean, InputArray eigenvectors, OutputArray result)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_PCAProject <- function(data, mean, eigenvectors, dst = NULL) {
  .Call(`_ROpenCV_cv_PCAProject`, data, mean, eigenvectors, dst)
}

#' @title PSNR
#' @description ROpenCV 绑定。C++ 签名：<code>double PSNR(InputArray src1, InputArray src2, double R)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_PSNR <- function(src1, src2, R = 255) {
  .Call(`_ROpenCV_cv_PSNR`, src1, src2, R)
}

#' @title SVBackSubst
#' @description ROpenCV 绑定。C++ 签名：<code>void SVBackSubst(InputArray w, InputArray u, InputArray vt, InputArray rhs, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_SVBackSubst <- function(w, u, vt, rhs, dst = NULL) {
  .Call(`_ROpenCV_cv_SVBackSubst`, w, u, vt, rhs, dst)
}

#' @title SVDecomp
#' @description ROpenCV 绑定。C++ 签名：<code>void SVDecomp(InputArray src, OutputArray w, OutputArray u, OutputArray vt, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_SVDecomp <- function(src, flags = 0, w = NULL, u = NULL, vt = NULL) {
  .Call(`_ROpenCV_cv_SVDecomp`, src, flags, w, u, vt)
}

#' @title absdiff
#' @description ROpenCV 绑定。C++ 签名：<code>void absdiff(InputArray src1, InputArray src2, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_absdiff <- function(src1, src2, dst = NULL) {
  .Call(`_ROpenCV_cv_absdiff`, src1, src2, dst)
}

#' @title add
#' @description ROpenCV 绑定。C++ 签名：<code>void add(InputArray src1, InputArray src2, OutputArray dst, InputArray mask, int dtype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_add <- function(src1, src2, mask = NULL, dtype = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_add`, src1, src2, mask, dtype, dst)
}

#' @title addWeighted
#' @description ROpenCV 绑定。C++ 签名：<code>void addWeighted(InputArray src1, double alpha, InputArray src2, double beta, double gamma, OutputArray dst, int dtype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_addWeighted <- function(src1, alpha, src2, beta, gamma, dtype = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_addWeighted`, src1, alpha, src2, beta, gamma, dtype, dst)
}

#' @title batchDistance
#' @description ROpenCV 绑定。C++ 签名：<code>void batchDistance(InputArray src1, InputArray src2, OutputArray dist, int dtype, OutputArray nidx, int normType, int K, InputArray mask, int update, bool crosscheck)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_batchDistance <- function(src1, src2, dtype, normType = NORM_L2, K = 0, mask = NULL, update = 0, crosscheck = FALSE, dist = NULL, nidx = NULL) {
  .Call(`_ROpenCV_cv_batchDistance`, src1, src2, dtype, normType, K, mask, update, crosscheck, dist, nidx)
}

#' @title bitwise_and
#' @description ROpenCV 绑定。C++ 签名：<code>void bitwise_and(InputArray src1, InputArray src2, OutputArray dst, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_bitwise_and <- function(src1, src2, mask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_bitwise_and`, src1, src2, mask, dst)
}

#' @title bitwise_not
#' @description ROpenCV 绑定。C++ 签名：<code>void bitwise_not(InputArray src, OutputArray dst, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_bitwise_not <- function(src, mask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_bitwise_not`, src, mask, dst)
}

#' @title bitwise_or
#' @description ROpenCV 绑定。C++ 签名：<code>void bitwise_or(InputArray src1, InputArray src2, OutputArray dst, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_bitwise_or <- function(src1, src2, mask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_bitwise_or`, src1, src2, mask, dst)
}

#' @title bitwise_xor
#' @description ROpenCV 绑定。C++ 签名：<code>void bitwise_xor(InputArray src1, InputArray src2, OutputArray dst, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_bitwise_xor <- function(src1, src2, mask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_bitwise_xor`, src1, src2, mask, dst)
}

#' @title borderInterpolate
#' @description ROpenCV 绑定。C++ 签名：<code>int borderInterpolate(int p, int len, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_borderInterpolate <- function(p, len, borderType) {
  .Call(`_ROpenCV_cv_borderInterpolate`, p, len, borderType)
}

#' @title broadcast
#' @description ROpenCV 绑定。C++ 签名：<code>void broadcast(InputArray src, InputArray shape, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_broadcast <- function(src, shape, dst = NULL) {
  .Call(`_ROpenCV_cv_broadcast`, src, shape, dst)
}

#' @title calcCovarMatrix
#' @description ROpenCV 绑定。C++ 签名：<code>void calcCovarMatrix(InputArray samples, OutputArray covar, InputOutputArray mean, int flags, int ctype)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_calcCovarMatrix <- function(samples, mean = NULL, flags, ctype = CV_64F, covar = NULL) {
  .Call(`_ROpenCV_cv_calcCovarMatrix`, samples, mean, flags, ctype, covar)
}

#' @title cartToPolar
#' @description ROpenCV 绑定。C++ 签名：<code>void cartToPolar(InputArray x, InputArray y, OutputArray magnitude, OutputArray angle, bool angleInDegrees)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_cartToPolar <- function(x, y, angleInDegrees = FALSE, magnitude = NULL, angle = NULL) {
  .Call(`_ROpenCV_cv_cartToPolar`, x, y, angleInDegrees, magnitude, angle)
}

#' @title checkRange
#' @description ROpenCV 绑定。C++ 签名：<code>bool checkRange(InputArray a, bool quiet, Point* pos, double minVal, double maxVal)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_checkRange <- function(a, quiet = TRUE, minVal = -Inf, maxVal = Inf) {
  .Call(`_ROpenCV_cv_checkRange`, a, quiet, minVal, maxVal)
}

#' @title compare
#' @description ROpenCV 绑定。C++ 签名：<code>void compare(InputArray src1, InputArray src2, OutputArray dst, int cmpop)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_compare <- function(src1, src2, cmpop, dst = NULL) {
  .Call(`_ROpenCV_cv_compare`, src1, src2, cmpop, dst)
}

#' @title completeSymm
#' @description ROpenCV 绑定。C++ 签名：<code>void completeSymm(InputOutputArray m, bool lowerToUpper)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>m</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_completeSymm <- function(m = NULL, lowerToUpper = FALSE) {
  .Call(`_ROpenCV_cv_completeSymm`, m, lowerToUpper)
}

#' @title convertFp16
#' @description ROpenCV 绑定。C++ 签名：<code>void convertFp16(InputArray src, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_convertFp16 <- function(src, dst = NULL) {
  .Call(`_ROpenCV_cv_convertFp16`, src, dst)
}

#' @title convertScaleAbs
#' @description ROpenCV 绑定。C++ 签名：<code>void convertScaleAbs(InputArray src, OutputArray dst, double alpha, double beta)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_convertScaleAbs <- function(src, alpha = 1, beta = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_convertScaleAbs`, src, alpha, beta, dst)
}

#' @title copyMakeBorder
#' @description ROpenCV 绑定。C++ 签名：<code>void copyMakeBorder(InputArray src, OutputArray dst, int top, int bottom, int left, int right, int borderType, const Scalar&amp; value)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_copyMakeBorder <- function(src, top, bottom, left, right, borderType, value = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_copyMakeBorder`, src, top, bottom, left, right, borderType, value, dst)
}

#' @title copyTo
#' @description ROpenCV 绑定。C++ 签名：<code>void copyTo(InputArray src, OutputArray dst, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_copyTo <- function(src, mask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_copyTo`, src, mask, dst)
}

#' @title countNonZero
#' @description ROpenCV 绑定。C++ 签名：<code>int countNonZero(InputArray src)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_countNonZero <- function(src) {
  .Call(`_ROpenCV_cv_countNonZero`, src)
}

#' @title dct
#' @description ROpenCV 绑定。C++ 签名：<code>void dct(InputArray src, OutputArray dst, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_dct <- function(src, flags = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_dct`, src, flags, dst)
}

#' @title determinant
#' @description ROpenCV 绑定。C++ 签名：<code>double determinant(InputArray mtx)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_determinant <- function(mtx) {
  .Call(`_ROpenCV_cv_determinant`, mtx)
}

#' @title dft
#' @description ROpenCV 绑定。C++ 签名：<code>void dft(InputArray src, OutputArray dst, int flags, int nonzeroRows)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_dft <- function(src, flags = 0, nonzeroRows = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_dft`, src, flags, nonzeroRows, dst)
}

#' @title divide
#' @description ROpenCV 绑定。C++ 签名：<code>void divide(double scale, InputArray src2, OutputArray dst, int dtype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_divide__0 <- function(scale, src2, dtype = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_divide__0`, scale, src2, dtype, dst)
}

#' @title divide
#' @description ROpenCV 绑定。C++ 签名：<code>void divide(InputArray src1, InputArray src2, OutputArray dst, double scale, int dtype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_divide__1 <- function(src1, src2, scale = 1, dtype = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_divide__1`, src1, src2, scale, dtype, dst)
}

# cv_divide
#' @rdname cv_divide
#' @export
cv_divide <- local({
  .sigs <- list(
    list(f = .ropecv_cv_divide__0, p = c(scale = "dbl", src2 = "mat", dtype = "int", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "scale, src2, dtype = -1, dst = NULL"),
    list(f = .ropecv_cv_divide__1, p = c(src1 = "mat", src2 = "mat", scale = "dbl", dtype = "int", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE), s = "src1, src2, scale = 1, dtype = -1, dst = NULL")
  )
  function(...) .ropecv_pick("cv_divide", .sigs, list(...))
})

#' @title eigen
#' @description ROpenCV 绑定。C++ 签名：<code>bool eigen(InputArray src, OutputArray eigenvalues, OutputArray eigenvectors)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_eigen <- function(src, eigenvalues = NULL, eigenvectors = NULL) {
  .Call(`_ROpenCV_cv_eigen`, src, eigenvalues, eigenvectors)
}

#' @title eigenNonSymmetric
#' @description ROpenCV 绑定。C++ 签名：<code>void eigenNonSymmetric(InputArray src, OutputArray eigenvalues, OutputArray eigenvectors)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_eigenNonSymmetric <- function(src, eigenvalues = NULL, eigenvectors = NULL) {
  .Call(`_ROpenCV_cv_eigenNonSymmetric`, src, eigenvalues, eigenvectors)
}

#' @title exp
#' @description ROpenCV 绑定。C++ 签名：<code>void exp(InputArray src, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_exp <- function(src, dst = NULL) {
  .Call(`_ROpenCV_cv_exp`, src, dst)
}

#' @title extractChannel
#' @description ROpenCV 绑定。C++ 签名：<code>void extractChannel(InputArray src, OutputArray dst, int coi)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_extractChannel <- function(src, coi, dst = NULL) {
  .Call(`_ROpenCV_cv_extractChannel`, src, coi, dst)
}

#' @title findNonZero
#' @description ROpenCV 绑定。C++ 签名：<code>void findNonZero(InputArray src, OutputArray idx)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_findNonZero <- function(src, dst = NULL) {
  .Call(`_ROpenCV_cv_findNonZero`, src, dst)
}

#' @title finiteMask
#' @description ROpenCV 绑定。C++ 签名：<code>void finiteMask(InputArray src, OutputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_finiteMask <- function(src, dst = NULL) {
  .Call(`_ROpenCV_cv_finiteMask`, src, dst)
}

#' @title flip
#' @description ROpenCV 绑定。C++ 签名：<code>void flip(InputArray src, OutputArray dst, int flipCode)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_flip <- function(src, flipCode, dst = NULL) {
  .Call(`_ROpenCV_cv_flip`, src, flipCode, dst)
}

#' @title flipND
#' @description ROpenCV 绑定。C++ 签名：<code>void flipND(InputArray src, OutputArray dst, int axis)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_flipND <- function(src, axis, dst = NULL) {
  .Call(`_ROpenCV_cv_flipND`, src, axis, dst)
}

#' @title gemm
#' @description ROpenCV 绑定。C++ 签名：<code>void gemm(InputArray src1, InputArray src2, double alpha, InputArray src3, double beta, OutputArray dst, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_gemm <- function(src1, src2, alpha, src3, beta, flags = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_gemm`, src1, src2, alpha, src3, beta, flags, dst)
}

#' @title getOptimalDFTSize
#' @description ROpenCV 绑定。C++ 签名：<code>int getOptimalDFTSize(int vecsize)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getOptimalDFTSize <- function(vecsize) {
  .Call(`_ROpenCV_cv_getOptimalDFTSize`, vecsize)
}

#' @title hasNonZero
#' @description ROpenCV 绑定。C++ 签名：<code>bool hasNonZero(InputArray src)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_hasNonZero <- function(src) {
  .Call(`_ROpenCV_cv_hasNonZero`, src)
}

#' @title hconcat
#' @description ROpenCV 绑定。C++ 签名：<code>void hconcat(InputArrayOfArrays src, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_hconcat <- function(src, dst = NULL) {
  .Call(`_ROpenCV_cv_hconcat`, src, dst)
}

#' @title idct
#' @description ROpenCV 绑定。C++ 签名：<code>void idct(InputArray src, OutputArray dst, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_idct <- function(src, flags = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_idct`, src, flags, dst)
}

#' @title idft
#' @description ROpenCV 绑定。C++ 签名：<code>void idft(InputArray src, OutputArray dst, int flags, int nonzeroRows)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_idft <- function(src, flags = 0, nonzeroRows = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_idft`, src, flags, nonzeroRows, dst)
}

#' @title inRange
#' @description ROpenCV 绑定。C++ 签名：<code>void inRange(InputArray src, InputArray lowerb, InputArray upperb, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_inRange <- function(src, lowerb, upperb, dst = NULL) {
  .Call(`_ROpenCV_cv_inRange`, src, lowerb, upperb, dst)
}

#' @title insertChannel
#' @description ROpenCV 绑定。C++ 签名：<code>void insertChannel(InputArray src, InputOutputArray dst, int coi)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_insertChannel <- function(src, dst = NULL, coi) {
  .Call(`_ROpenCV_cv_insertChannel`, src, dst, coi)
}

#' @title invert
#' @description ROpenCV 绑定。C++ 签名：<code>double invert(InputArray src, OutputArray dst, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_invert <- function(src, flags = DECOMP_LU, dst = NULL) {
  .Call(`_ROpenCV_cv_invert`, src, flags, dst)
}

#' @title kmeans
#' @description ROpenCV 绑定。C++ 签名：<code>double kmeans(InputArray data, int K, InputOutputArray bestLabels, TermCriteria criteria, int attempts, int flags, OutputArray centers)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_kmeans <- function(data, K, bestLabels = NULL, criteria, attempts, flags, centers = NULL) {
  .Call(`_ROpenCV_cv_kmeans`, data, K, bestLabels, criteria, attempts, flags, centers)
}

#' @title log
#' @description ROpenCV 绑定。C++ 签名：<code>void log(InputArray src, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_log <- function(src, dst = NULL) {
  .Call(`_ROpenCV_cv_log`, src, dst)
}

#' @title magnitude
#' @description ROpenCV 绑定。C++ 签名：<code>void magnitude(InputArray x, InputArray y, OutputArray magnitude)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_magnitude <- function(x, y, dst = NULL) {
  .Call(`_ROpenCV_cv_magnitude`, x, y, dst)
}

#' @title max
#' @description ROpenCV 绑定。C++ 签名：<code>void max(InputArray src1, InputArray src2, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_max <- function(src1, src2, dst = NULL) {
  .Call(`_ROpenCV_cv_max`, src1, src2, dst)
}

#' @title mean
#' @description ROpenCV 绑定。C++ 签名：<code>Scalar mean(InputArray src, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_mean <- function(src, mask = NULL) {
  .Call(`_ROpenCV_cv_mean`, src, mask)
}

#' @title meanStdDev
#' @description ROpenCV 绑定。C++ 签名：<code>void meanStdDev(InputArray src, OutputArray mean, OutputArray stddev, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_meanStdDev <- function(src, mask = NULL, mean = NULL, stddev = NULL) {
  .Call(`_ROpenCV_cv_meanStdDev`, src, mask, mean, stddev)
}

#' @title merge
#' @description ROpenCV 绑定。C++ 签名：<code>void merge(InputArrayOfArrays mv, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_merge <- function(mv, dst = NULL) {
  .Call(`_ROpenCV_cv_merge`, mv, dst)
}

#' @title min
#' @description ROpenCV 绑定。C++ 签名：<code>void min(InputArray src1, InputArray src2, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_min <- function(src1, src2, dst = NULL) {
  .Call(`_ROpenCV_cv_min`, src1, src2, dst)
}

#' @title minMaxLoc
#' @description ROpenCV 绑定。C++ 签名：<code>void minMaxLoc(InputArray src, double* minVal, double* maxVal, Point* minLoc, Point* maxLoc, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_minMaxLoc <- function(src, mask = NULL) {
  .Call(`_ROpenCV_cv_minMaxLoc`, src, mask)
}

#' @title mixChannels
#' @description ROpenCV 绑定。C++ 签名：<code>void mixChannels(InputArrayOfArrays src, InputOutputArrayOfArrays dst, const std::vector&lt;int&gt;&amp; fromTo)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_mixChannels <- function(src, fromTo, dst = NULL) {
  .Call(`_ROpenCV_cv_mixChannels`, src, fromTo, dst)
}

#' @title mulSpectrums
#' @description ROpenCV 绑定。C++ 签名：<code>void mulSpectrums(InputArray a, InputArray b, OutputArray c, int flags, bool conjB)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_mulSpectrums <- function(a, b, flags, conjB = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_mulSpectrums`, a, b, flags, conjB, dst)
}

#' @title mulTransposed
#' @description ROpenCV 绑定。C++ 签名：<code>void mulTransposed(InputArray src, OutputArray dst, bool aTa, InputArray delta, double scale, int dtype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_mulTransposed <- function(src, aTa, delta = NULL, scale = 1, dtype = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_mulTransposed`, src, aTa, delta, scale, dtype, dst)
}

#' @title multiply
#' @description ROpenCV 绑定。C++ 签名：<code>void multiply(InputArray src1, InputArray src2, OutputArray dst, double scale, int dtype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_multiply <- function(src1, src2, scale = 1, dtype = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_multiply`, src1, src2, scale, dtype, dst)
}

#' @title norm
#' @description ROpenCV 绑定。C++ 签名：<code>double norm(InputArray src1, int normType, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_norm__0 <- function(src1, normType = NORM_L2, mask = NULL) {
  .Call(`_ROpenCV_cv_norm__0`, src1, normType, mask)
}

#' @title norm
#' @description ROpenCV 绑定。C++ 签名：<code>double norm(InputArray src1, InputArray src2, int normType, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_norm__1 <- function(src1, src2, normType = NORM_L2, mask = NULL) {
  .Call(`_ROpenCV_cv_norm__1`, src1, src2, normType, mask)
}

# cv_norm
#' @rdname cv_norm
#' @export
cv_norm <- local({
  .sigs <- list(
    list(f = .ropecv_cv_norm__0, p = c(src1 = "mat", normType = "int", mask = "mat"), r = c(TRUE, FALSE, FALSE), s = "src1, normType = NORM_L2, mask = NULL"),
    list(f = .ropecv_cv_norm__1, p = c(src1 = "mat", src2 = "mat", normType = "int", mask = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "src1, src2, normType = NORM_L2, mask = NULL")
  )
  function(...) .ropecv_pick("cv_norm", .sigs, list(...))
})

#' @title normalize
#' @description ROpenCV 绑定。C++ 签名：<code>void normalize(InputArray src, InputOutputArray dst, double alpha, double beta, int norm_type, int dtype, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_normalize <- function(src, dst = NULL, alpha = 1, beta = 0, norm_type = NORM_L2, dtype = -1, mask = NULL) {
  .Call(`_ROpenCV_cv_normalize`, src, dst, alpha, beta, norm_type, dtype, mask)
}

#' @title patchNaNs
#' @description ROpenCV 绑定。C++ 签名：<code>void patchNaNs(InputOutputArray a, double val)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>a</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_patchNaNs <- function(a = NULL, val = 0) {
  .Call(`_ROpenCV_cv_patchNaNs`, a, val)
}

#' @title perspectiveTransform
#' @description ROpenCV 绑定。C++ 签名：<code>void perspectiveTransform(InputArray src, OutputArray dst, InputArray m)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_perspectiveTransform <- function(src, m, dst = NULL) {
  .Call(`_ROpenCV_cv_perspectiveTransform`, src, m, dst)
}

#' @title phase
#' @description ROpenCV 绑定。C++ 签名：<code>void phase(InputArray x, InputArray y, OutputArray angle, bool angleInDegrees)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_phase <- function(x, y, angleInDegrees = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_phase`, x, y, angleInDegrees, dst)
}

#' @title polarToCart
#' @description ROpenCV 绑定。C++ 签名：<code>void polarToCart(InputArray magnitude, InputArray angle, OutputArray x, OutputArray y, bool angleInDegrees)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_polarToCart <- function(magnitude, angle, angleInDegrees = FALSE, x = NULL, y = NULL) {
  .Call(`_ROpenCV_cv_polarToCart`, magnitude, angle, angleInDegrees, x, y)
}

#' @title pow
#' @description ROpenCV 绑定。C++ 签名：<code>void pow(InputArray src, double power, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_pow <- function(src, power, dst = NULL) {
  .Call(`_ROpenCV_cv_pow`, src, power, dst)
}

#' @title randShuffle
#' @description ROpenCV 绑定。C++ 签名：<code>void randShuffle(InputOutputArray dst, double iterFactor, RNG* rng)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_randShuffle <- function(dst = NULL, iterFactor = 1) {
  .Call(`_ROpenCV_cv_randShuffle`, dst, iterFactor)
}

#' @title randn
#' @description ROpenCV 绑定。C++ 签名：<code>void randn(InputOutputArray dst, InputArray mean, InputArray stddev)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_randn <- function(dst = NULL, mean, stddev) {
  .Call(`_ROpenCV_cv_randn`, dst, mean, stddev)
}

#' @title randu
#' @description ROpenCV 绑定。C++ 签名：<code>void randu(InputOutputArray dst, InputArray low, InputArray high)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_randu <- function(dst = NULL, low, high) {
  .Call(`_ROpenCV_cv_randu`, dst, low, high)
}

#' @title reduce
#' @description ROpenCV 绑定。C++ 签名：<code>void reduce(InputArray src, OutputArray dst, int dim, int rtype, int dtype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_reduce <- function(src, dim, rtype, dtype = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_reduce`, src, dim, rtype, dtype, dst)
}

#' @title reduceArgMax
#' @description ROpenCV 绑定。C++ 签名：<code>void reduceArgMax(InputArray src, OutputArray dst, int axis, bool lastIndex)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_reduceArgMax <- function(src, axis, lastIndex = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_reduceArgMax`, src, axis, lastIndex, dst)
}

#' @title reduceArgMin
#' @description ROpenCV 绑定。C++ 签名：<code>void reduceArgMin(InputArray src, OutputArray dst, int axis, bool lastIndex)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_reduceArgMin <- function(src, axis, lastIndex = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_reduceArgMin`, src, axis, lastIndex, dst)
}

#' @title repeat
#' @description ROpenCV 绑定。C++ 签名：<code>void repeat(InputArray src, int ny, int nx, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_repeat <- function(src, ny, nx, dst = NULL) {
  .Call(`_ROpenCV_cv_repeat`, src, ny, nx, dst)
}

#' @title rotate
#' @description ROpenCV 绑定。C++ 签名：<code>void rotate(InputArray src, OutputArray dst, int rotateCode)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_rotate <- function(src, rotateCode, dst = NULL) {
  .Call(`_ROpenCV_cv_rotate`, src, rotateCode, dst)
}

#' @title scaleAdd
#' @description ROpenCV 绑定。C++ 签名：<code>void scaleAdd(InputArray src1, double alpha, InputArray src2, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_scaleAdd <- function(src1, alpha, src2, dst = NULL) {
  .Call(`_ROpenCV_cv_scaleAdd`, src1, alpha, src2, dst)
}

#' @title setIdentity
#' @description ROpenCV 绑定。C++ 签名：<code>void setIdentity(InputOutputArray mtx, const Scalar&amp; s)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>mtx</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_setIdentity <- function(mtx = NULL, s = 1) {
  .Call(`_ROpenCV_cv_setIdentity`, mtx, s)
}

#' @title solve
#' @description ROpenCV 绑定。C++ 签名：<code>bool solve(InputArray src1, InputArray src2, OutputArray dst, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_solve <- function(src1, src2, flags = DECOMP_LU, dst = NULL) {
  .Call(`_ROpenCV_cv_solve`, src1, src2, flags, dst)
}

#' @title solveCubic
#' @description ROpenCV 绑定。C++ 签名：<code>int solveCubic(InputArray coeffs, OutputArray roots)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_solveCubic <- function(coeffs, dst = NULL) {
  .Call(`_ROpenCV_cv_solveCubic`, coeffs, dst)
}

#' @title solvePoly
#' @description ROpenCV 绑定。C++ 签名：<code>double solvePoly(InputArray coeffs, OutputArray roots, int maxIters)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_solvePoly <- function(coeffs, maxIters = 300, dst = NULL) {
  .Call(`_ROpenCV_cv_solvePoly`, coeffs, maxIters, dst)
}

#' @title sort
#' @description ROpenCV 绑定。C++ 签名：<code>void sort(InputArray src, OutputArray dst, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_sort <- function(src, flags, dst = NULL) {
  .Call(`_ROpenCV_cv_sort`, src, flags, dst)
}

#' @title sortIdx
#' @description ROpenCV 绑定。C++ 签名：<code>void sortIdx(InputArray src, OutputArray dst, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_sortIdx <- function(src, flags, dst = NULL) {
  .Call(`_ROpenCV_cv_sortIdx`, src, flags, dst)
}

#' @title split
#' @description ROpenCV 绑定。C++ 签名：<code>void split(InputArray m, OutputArrayOfArrays mv)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_split <- function(m, mv = NULL) {
  .Call(`_ROpenCV_cv_split`, m, mv)
}

#' @title sqrt
#' @description ROpenCV 绑定。C++ 签名：<code>void sqrt(InputArray src, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_sqrt <- function(src, dst = NULL) {
  .Call(`_ROpenCV_cv_sqrt`, src, dst)
}

#' @title subtract
#' @description ROpenCV 绑定。C++ 签名：<code>void subtract(InputArray src1, InputArray src2, OutputArray dst, InputArray mask, int dtype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_subtract <- function(src1, src2, mask = NULL, dtype = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_subtract`, src1, src2, mask, dtype, dst)
}

#' @title sum
#' @description ROpenCV 绑定。C++ 签名：<code>Scalar sum(InputArray src)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_sum <- function(src) {
  .Call(`_ROpenCV_cv_sum`, src)
}

#' @title trace
#' @description ROpenCV 绑定。C++ 签名：<code>Scalar trace(InputArray mtx)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_trace <- function(mtx) {
  .Call(`_ROpenCV_cv_trace`, mtx)
}

#' @title transform
#' @description ROpenCV 绑定。C++ 签名：<code>void transform(InputArray src, OutputArray dst, InputArray m)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_transform <- function(src, m, dst = NULL) {
  .Call(`_ROpenCV_cv_transform`, src, m, dst)
}

#' @title transpose
#' @description ROpenCV 绑定。C++ 签名：<code>void transpose(InputArray src, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_transpose <- function(src, dst = NULL) {
  .Call(`_ROpenCV_cv_transpose`, src, dst)
}

#' @title transposeND
#' @description ROpenCV 绑定。C++ 签名：<code>void transposeND(InputArray src, const std::vector&lt;int&gt;&amp; order, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_transposeND <- function(src, order, dst = NULL) {
  .Call(`_ROpenCV_cv_transposeND`, src, order, dst)
}

#' @title vconcat
#' @description ROpenCV 绑定。C++ 签名：<code>void vconcat(InputArrayOfArrays src, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_vconcat <- function(src, dst = NULL) {
  .Call(`_ROpenCV_cv_vconcat`, src, dst)
}
