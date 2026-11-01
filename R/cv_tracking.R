# 由 tools/gen/emit.py 生成，请勿手改。

#' @title CamShift
#' @description ROpenCV 绑定。C++ 签名：<code>RotatedRect CamShift(InputArray probImage, Rect&amp; window, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_CamShift <- function(probImage, window = NULL, criteria) {
  .Call(`_ROpenCV_cv_CamShift`, probImage, window, criteria)
}

#' @title buildOpticalFlowPyramid
#' @description ROpenCV 绑定。C++ 签名：<code>int buildOpticalFlowPyramid(InputArray img, OutputArrayOfArrays pyramid, Size winSize, int maxLevel, bool withDerivatives, int pyrBorder, int derivBorder, bool tryReuseInputImage)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_buildOpticalFlowPyramid <- function(img, winSize, maxLevel, withDerivatives = TRUE, pyrBorder = BORDER_REFLECT_101, derivBorder = BORDER_CONSTANT, tryReuseInputImage = TRUE, pyramid = NULL) {
  .Call(`_ROpenCV_cv_buildOpticalFlowPyramid`, img, winSize, maxLevel, withDerivatives, pyrBorder, derivBorder, tryReuseInputImage, pyramid)
}

#' @title calcOpticalFlowFarneback
#' @description ROpenCV 绑定。C++ 签名：<code>void calcOpticalFlowFarneback(InputArray prev, InputArray next, InputOutputArray flow, double pyr_scale, int levels, int winsize, int iterations, int poly_n, double poly_sigma, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>flow</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_calcOpticalFlowFarneback <- function(prev, next_, flow = NULL, pyr_scale, levels, winsize, iterations, poly_n, poly_sigma, flags) {
  .Call(`_ROpenCV_cv_calcOpticalFlowFarneback`, prev, next_, flow, pyr_scale, levels, winsize, iterations, poly_n, poly_sigma, flags)
}

#' @title calcOpticalFlowPyrLK
#' @description ROpenCV 绑定。C++ 签名：<code>void calcOpticalFlowPyrLK(InputArray prevImg, InputArray nextImg, InputArray prevPts, InputOutputArray nextPts, OutputArray status, OutputArray err, Size winSize, int maxLevel, TermCriteria criteria, int flags, double minEigThreshold)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_calcOpticalFlowPyrLK <- function(prevImg, nextImg, prevPts, nextPts = NULL, winSize = c(21, 21), maxLevel = 3, criteria = c(5, 30, 0.01), flags = 0, minEigThreshold = 1e-4, status = NULL, err = NULL) {
  .Call(`_ROpenCV_cv_calcOpticalFlowPyrLK`, prevImg, nextImg, prevPts, nextPts, winSize, maxLevel, criteria, flags, minEigThreshold, status, err)
}

#' @title computeECC
#' @description ROpenCV 绑定。C++ 签名：<code>double computeECC(InputArray templateImage, InputArray inputImage, InputArray inputMask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_computeECC <- function(templateImage, inputImage, inputMask = NULL) {
  .Call(`_ROpenCV_cv_computeECC`, templateImage, inputImage, inputMask)
}

#' @title estimateRigidTransform
#' @description ROpenCV 绑定。C++ 签名：<code>Mat estimateRigidTransform(InputArray src, InputArray dst, bool fullAffine)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_estimateRigidTransform <- function(src, dst, fullAffine) {
  .Call(`_ROpenCV_cv_estimateRigidTransform`, src, dst, fullAffine)
}

#' @title findTransformECC
#' @description ROpenCV 绑定。C++ 签名：<code>double findTransformECC(InputArray templateImage, InputArray inputImage, InputOutputArray warpMatrix, int motionType, TermCriteria criteria, InputArray inputMask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>warpMatrix</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findTransformECC__0 <- function(templateImage, inputImage, warpMatrix = NULL, motionType = MOTION_AFFINE, criteria = c(5, 50, 0.001), inputMask = NULL) {
  .Call(`_ROpenCV_cv_findTransformECC__0`, templateImage, inputImage, warpMatrix, motionType, criteria, inputMask)
}

#' @title findTransformECC
#' @description ROpenCV 绑定。C++ 签名：<code>double findTransformECC(InputArray templateImage, InputArray inputImage, InputOutputArray warpMatrix, int motionType, TermCriteria criteria, InputArray inputMask, int gaussFiltSize)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>warpMatrix</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findTransformECC__1 <- function(templateImage, inputImage, warpMatrix = NULL, motionType, criteria, inputMask, gaussFiltSize) {
  .Call(`_ROpenCV_cv_findTransformECC__1`, templateImage, inputImage, warpMatrix, motionType, criteria, inputMask, gaussFiltSize)
}

# cv_findTransformECC
#' @rdname cv_findTransformECC
#' @export
cv_findTransformECC <- local({
  .sigs <- list(
    list(f = .ropecv_cv_findTransformECC__0, p = c(templateImage = "mat", inputImage = "mat", warpMatrix = "mat", motionType = "int", criteria = "tc", inputMask = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "templateImage, inputImage, warpMatrix = NULL, motionType = MOTION_AFFINE, criteria = c(5, 50, 0.001), inputMask = NULL"),
    list(f = .ropecv_cv_findTransformECC__1, p = c(templateImage = "mat", inputImage = "mat", warpMatrix = "mat", motionType = "int", criteria = "tc", inputMask = "mat", gaussFiltSize = "int"), r = c(TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, TRUE), s = "templateImage, inputImage, warpMatrix = NULL, motionType, criteria, inputMask, gaussFiltSize")
  )
  function(...) .ropecv_pick("cv_findTransformECC", .sigs, list(...))
})

#' @title meanShift
#' @description ROpenCV 绑定。C++ 签名：<code>int meanShift(InputArray probImage, Rect&amp; window, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_meanShift <- function(probImage, window = NULL, criteria) {
  .Call(`_ROpenCV_cv_meanShift`, probImage, window, criteria)
}

#' @title readOpticalFlow
#' @description ROpenCV 绑定。C++ 签名：<code>Mat readOpticalFlow(const String&amp; path)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_readOpticalFlow <- function(path) {
  .Call(`_ROpenCV_cv_readOpticalFlow`, path)
}

#' @title writeOpticalFlow
#' @description ROpenCV 绑定。C++ 签名：<code>bool writeOpticalFlow(const String&amp; path, InputArray flow)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_writeOpticalFlow <- function(path, flow) {
  .Call(`_ROpenCV_cv_writeOpticalFlow`, path, flow)
}
