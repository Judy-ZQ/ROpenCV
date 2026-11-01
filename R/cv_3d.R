# 由 tools/gen/emit.py 生成，请勿手改。

#' @title RQDecomp3x3
#' @description ROpenCV 绑定。C++ 签名：<code>Vec3d RQDecomp3x3(InputArray src, OutputArray mtxR, OutputArray mtxQ, OutputArray Qx, OutputArray Qy, OutputArray Qz)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_RQDecomp3x3 <- function(src, mtxR = NULL, mtxQ = NULL, Qx = NULL, Qy = NULL, Qz = NULL) {
  .Call(`_ROpenCV_cv_RQDecomp3x3`, src, mtxR, mtxQ, Qx, Qy, Qz)
}

#' @title Rodrigues
#' @description ROpenCV 绑定。C++ 签名：<code>void Rodrigues(InputArray src, OutputArray dst, OutputArray jacobian)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_Rodrigues <- function(src, dst = NULL, jacobian = NULL) {
  .Call(`_ROpenCV_cv_Rodrigues`, src, dst, jacobian)
}

#' @title composeRT
#' @description ROpenCV 绑定。C++ 签名：<code>void composeRT(InputArray rvec1, InputArray tvec1, InputArray rvec2, InputArray tvec2, OutputArray rvec3, OutputArray tvec3, OutputArray dr3dr1, OutputArray dr3dt1, OutputArray dr3dr2, OutputArray dr3dt2, OutputArray dt3dr1, OutputArray dt3dt1, OutputArray dt3dr2, OutputArray dt3dt2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_composeRT <- function(rvec1, tvec1, rvec2, tvec2, rvec3 = NULL, tvec3 = NULL, dr3dr1 = NULL, dr3dt1 = NULL, dr3dr2 = NULL, dr3dt2 = NULL, dt3dr1 = NULL, dt3dt1 = NULL, dt3dr2 = NULL, dt3dt2 = NULL) {
  .Call(`_ROpenCV_cv_composeRT`, rvec1, tvec1, rvec2, tvec2, rvec3, tvec3, dr3dr1, dr3dt1, dr3dr2, dr3dt2, dt3dr1, dt3dt1, dt3dr2, dt3dt2)
}

#' @title computeCorrespondEpilines
#' @description ROpenCV 绑定。C++ 签名：<code>void computeCorrespondEpilines(InputArray points, int whichImage, InputArray F, OutputArray lines)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_computeCorrespondEpilines <- function(points, whichImage, F, dst = NULL) {
  .Call(`_ROpenCV_cv_computeCorrespondEpilines`, points, whichImage, F, dst)
}

#' @title convertPointsFromHomogeneous
#' @description ROpenCV 绑定。C++ 签名：<code>void convertPointsFromHomogeneous(InputArray src, OutputArray dst, int dtype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_convertPointsFromHomogeneous <- function(src, dtype = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_convertPointsFromHomogeneous`, src, dtype, dst)
}

#' @title convertPointsToHomogeneous
#' @description ROpenCV 绑定。C++ 签名：<code>void convertPointsToHomogeneous(InputArray src, OutputArray dst, int dtype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_convertPointsToHomogeneous <- function(src, dtype = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_convertPointsToHomogeneous`, src, dtype, dst)
}

#' @title correctMatches
#' @description ROpenCV 绑定。C++ 签名：<code>void correctMatches(InputArray F, InputArray points1, InputArray points2, OutputArray newPoints1, OutputArray newPoints2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_correctMatches <- function(F, points1, points2, newPoints1 = NULL, newPoints2 = NULL) {
  .Call(`_ROpenCV_cv_correctMatches`, F, points1, points2, newPoints1, newPoints2)
}

#' @title decomposeEssentialMat
#' @description ROpenCV 绑定。C++ 签名：<code>void decomposeEssentialMat(InputArray E, OutputArray R1, OutputArray R2, OutputArray t)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_decomposeEssentialMat <- function(E, R1 = NULL, R2 = NULL, t = NULL) {
  .Call(`_ROpenCV_cv_decomposeEssentialMat`, E, R1, R2, t)
}

#' @title decomposeHomographyMat
#' @description ROpenCV 绑定。C++ 签名：<code>int decomposeHomographyMat(InputArray H, InputArray K, OutputArrayOfArrays rotations, OutputArrayOfArrays translations, OutputArrayOfArrays normals)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_decomposeHomographyMat <- function(H, K, rotations = NULL, translations = NULL, normals = NULL) {
  .Call(`_ROpenCV_cv_decomposeHomographyMat`, H, K, rotations, translations, normals)
}

#' @title decomposeProjectionMatrix
#' @description ROpenCV 绑定。C++ 签名：<code>void decomposeProjectionMatrix(InputArray projMatrix, OutputArray cameraMatrix, OutputArray rotMatrix, OutputArray transVect, OutputArray rotMatrixX, OutputArray rotMatrixY, OutputArray rotMatrixZ, OutputArray eulerAngles)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_decomposeProjectionMatrix <- function(projMatrix, cameraMatrix = NULL, rotMatrix = NULL, transVect = NULL, rotMatrixX = NULL, rotMatrixY = NULL, rotMatrixZ = NULL, eulerAngles = NULL) {
  .Call(`_ROpenCV_cv_decomposeProjectionMatrix`, projMatrix, cameraMatrix, rotMatrix, transVect, rotMatrixX, rotMatrixY, rotMatrixZ, eulerAngles)
}

#' @title distortPoints
#' @description ROpenCV 绑定。C++ 签名：<code>void distortPoints(InputArray undistorted, OutputArray distorted, InputArray K, InputArray D, double alpha)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_distortPoints__0 <- function(undistorted, K, D, alpha = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_distortPoints__0`, undistorted, K, D, alpha, dst)
}

#' @title distortPoints
#' @description ROpenCV 绑定。C++ 签名：<code>void distortPoints(InputArray undistorted, OutputArray distorted, InputArray Kundistorted, InputArray K, InputArray D, double alpha)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_distortPoints__1 <- function(undistorted, Kundistorted, K, D, alpha = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_distortPoints__1`, undistorted, Kundistorted, K, D, alpha, dst)
}

# cv_distortPoints
#' @rdname cv_distortPoints
#' @export
cv_distortPoints <- local({
  .sigs <- list(
    list(f = .ropecv_cv_distortPoints__0, p = c(undistorted = "mat", K = "mat", D = "mat", alpha = "dbl", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "undistorted, K, D, alpha = 0, dst = NULL"),
    list(f = .ropecv_cv_distortPoints__1, p = c(undistorted = "mat", Kundistorted = "mat", K = "mat", D = "mat", alpha = "dbl", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE), s = "undistorted, Kundistorted, K, D, alpha = 0, dst = NULL")
  )
  function(...) .ropecv_pick("cv_distortPoints", .sigs, list(...))
})

#' @title drawFrameAxes
#' @description ROpenCV 绑定。C++ 签名：<code>void drawFrameAxes(InputOutputArray image, InputArray cameraMatrix, InputArray distCoeffs, InputArray rvec, InputArray tvec, float length, int thickness)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>image</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawFrameAxes <- function(image = NULL, cameraMatrix, distCoeffs, rvec, tvec, length, thickness = 3) {
  .Call(`_ROpenCV_cv_drawFrameAxes`, image, cameraMatrix, distCoeffs, rvec, tvec, length, thickness)
}

#' @title estimateAffine2D
#' @description ROpenCV 绑定。C++ 签名：<code>Mat estimateAffine2D(InputArray pts1, InputArray pts2, OutputArray inliers, const UsacParams &amp; params)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_estimateAffine2D__0 <- function(pts1, pts2, params, dst = NULL) {
  .Call(`_ROpenCV_cv_estimateAffine2D__0`, pts1, pts2, params, dst)
}

#' @title estimateAffine2D
#' @description ROpenCV 绑定。C++ 签名：<code>Mat estimateAffine2D(InputArray from, InputArray to, OutputArray inliers, int method, double ransacReprojThreshold, size_t maxIters, double confidence, size_t refineIters)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_estimateAffine2D__1 <- function(from, to, method = RANSAC, ransacReprojThreshold = 3, maxIters = 2000, confidence = 0.99, refineIters = 10, dst = NULL) {
  .Call(`_ROpenCV_cv_estimateAffine2D__1`, from, to, method, ransacReprojThreshold, maxIters, confidence, refineIters, dst)
}

# cv_estimateAffine2D
#' @rdname cv_estimateAffine2D
#' @export
cv_estimateAffine2D <- local({
  .sigs <- list(
    list(f = .ropecv_cv_estimateAffine2D__0, p = c(pts1 = "mat", pts2 = "mat", params = "lst", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "pts1, pts2, params, dst = NULL"),
    list(f = .ropecv_cv_estimateAffine2D__1, p = c(from = "mat", to = "mat", method = "int", ransacReprojThreshold = "dbl", maxIters = "int", confidence = "dbl", refineIters = "int", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "from, to, method = RANSAC, ransacReprojThreshold = 3, maxIters = 2000, confidence = 0.99, refineIters = 10, dst = NULL")
  )
  function(...) .ropecv_pick("cv_estimateAffine2D", .sigs, list(...))
})

#' @title estimateAffine3D
#' @description ROpenCV 绑定。C++ 签名：<code>cv::Mat estimateAffine3D(InputArray src, InputArray dst, double* scale, bool force_rotation)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
.ropecv_cv_estimateAffine3D__0 <- function(src, dst, force_rotation = TRUE) {
  .Call(`_ROpenCV_cv_estimateAffine3D__0`, src, dst, force_rotation)
}

#' @title estimateAffine3D
#' @description ROpenCV 绑定。C++ 签名：<code>int estimateAffine3D(InputArray src, InputArray dst, OutputArray out, OutputArray inliers, double ransacThreshold, double confidence)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_estimateAffine3D__1 <- function(src, dst, ransacThreshold = 3, confidence = 0.99, out = NULL, inliers = NULL) {
  .Call(`_ROpenCV_cv_estimateAffine3D__1`, src, dst, ransacThreshold, confidence, out, inliers)
}

# cv_estimateAffine3D
#' @rdname cv_estimateAffine3D
#' @export
cv_estimateAffine3D <- local({
  .sigs <- list(
    list(f = .ropecv_cv_estimateAffine3D__0, p = c(src = "mat", dst = "mat", force_rotation = "lgl"), r = c(TRUE, TRUE, FALSE), s = "src, dst, force_rotation = TRUE"),
    list(f = .ropecv_cv_estimateAffine3D__1, p = c(src = "mat", dst = "mat", ransacThreshold = "dbl", confidence = "dbl", out = "mat", inliers = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "src, dst, ransacThreshold = 3, confidence = 0.99, out = NULL, inliers = NULL")
  )
  function(...) .ropecv_pick("cv_estimateAffine3D", .sigs, list(...))
})

#' @title estimateAffinePartial2D
#' @description ROpenCV 绑定。C++ 签名：<code>cv::Mat estimateAffinePartial2D(InputArray from, InputArray to, OutputArray inliers, int method, double ransacReprojThreshold, size_t maxIters, double confidence, size_t refineIters)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_estimateAffinePartial2D <- function(from, to, method = RANSAC, ransacReprojThreshold = 3, maxIters = 2000, confidence = 0.99, refineIters = 10, dst = NULL) {
  .Call(`_ROpenCV_cv_estimateAffinePartial2D`, from, to, method, ransacReprojThreshold, maxIters, confidence, refineIters, dst)
}

#' @title estimateNewCameraMatrixForUndistortRectify
#' @description ROpenCV 绑定。C++ 签名：<code>void estimateNewCameraMatrixForUndistortRectify(InputArray K, InputArray D, const Size &amp; image_size, InputArray R, OutputArray P, double balance, const Size&amp; new_size, double fov_scale)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_estimateNewCameraMatrixForUndistortRectify <- function(K, D, image_size, R, balance = 0.0, new_size = NULL, fov_scale = 1.0, dst = NULL) {
  .Call(`_ROpenCV_cv_estimateNewCameraMatrixForUndistortRectify`, K, D, image_size, R, balance, new_size, fov_scale, dst)
}

#' @title estimateTranslation3D
#' @description ROpenCV 绑定。C++ 签名：<code>int estimateTranslation3D(InputArray src, InputArray dst, OutputArray out, OutputArray inliers, double ransacThreshold, double confidence)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_estimateTranslation3D <- function(src, dst, ransacThreshold = 3, confidence = 0.99, out = NULL, inliers = NULL) {
  .Call(`_ROpenCV_cv_estimateTranslation3D`, src, dst, ransacThreshold, confidence, out, inliers)
}

#' @title filterHomographyDecompByVisibleRefpoints
#' @description ROpenCV 绑定。C++ 签名：<code>void filterHomographyDecompByVisibleRefpoints(InputArrayOfArrays rotations, InputArrayOfArrays normals, InputArray beforePoints, InputArray afterPoints, OutputArray possibleSolutions, InputArray pointsMask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_filterHomographyDecompByVisibleRefpoints <- function(rotations, normals, beforePoints, afterPoints, pointsMask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_filterHomographyDecompByVisibleRefpoints`, rotations, normals, beforePoints, afterPoints, pointsMask, dst)
}

#' @title findEssentialMat
#' @description ROpenCV 绑定。C++ 签名：<code>Mat findEssentialMat(InputArray points1, InputArray points2, InputArray cameraMatrix, int method, double prob, double threshold, int maxIters, OutputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findEssentialMat__0 <- function(points1, points2, cameraMatrix, method = RANSAC, prob = 0.999, threshold = 1.0, maxIters = 1000, dst = NULL) {
  .Call(`_ROpenCV_cv_findEssentialMat__0`, points1, points2, cameraMatrix, method, prob, threshold, maxIters, dst)
}

#' @title findEssentialMat
#' @description ROpenCV 绑定。C++ 签名：<code>Mat findEssentialMat(InputArray points1, InputArray points2, InputArray cameraMatrix1, InputArray cameraMatrix2, InputArray dist_coeff1, InputArray dist_coeff2, OutputArray mask, const UsacParams &amp; params)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findEssentialMat__1 <- function(points1, points2, cameraMatrix1, cameraMatrix2, dist_coeff1, dist_coeff2, params, dst = NULL) {
  .Call(`_ROpenCV_cv_findEssentialMat__1`, points1, points2, cameraMatrix1, cameraMatrix2, dist_coeff1, dist_coeff2, params, dst)
}

#' @title findEssentialMat
#' @description ROpenCV 绑定。C++ 签名：<code>Mat findEssentialMat(InputArray points1, InputArray points2, InputArray cameraMatrix1, InputArray distCoeffs1, InputArray cameraMatrix2, InputArray distCoeffs2, int method, double prob, double threshold, OutputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findEssentialMat__2 <- function(points1, points2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, method = RANSAC, prob = 0.999, threshold = 1.0, dst = NULL) {
  .Call(`_ROpenCV_cv_findEssentialMat__2`, points1, points2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, method, prob, threshold, dst)
}

# cv_findEssentialMat
#' @rdname cv_findEssentialMat
#' @export
cv_findEssentialMat <- local({
  .sigs <- list(
    list(f = .ropecv_cv_findEssentialMat__0, p = c(points1 = "mat", points2 = "mat", cameraMatrix = "mat", method = "int", prob = "dbl", threshold = "dbl", maxIters = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "points1, points2, cameraMatrix, method = RANSAC, prob = 0.999, threshold = 1.0, maxIters = 1000, dst = NULL"),
    list(f = .ropecv_cv_findEssentialMat__1, p = c(points1 = "mat", points2 = "mat", cameraMatrix1 = "mat", cameraMatrix2 = "mat", dist_coeff1 = "mat", dist_coeff2 = "mat", params = "lst", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE), s = "points1, points2, cameraMatrix1, cameraMatrix2, dist_coeff1, dist_coeff2, params, dst = NULL"),
    list(f = .ropecv_cv_findEssentialMat__2, p = c(points1 = "mat", points2 = "mat", cameraMatrix1 = "mat", distCoeffs1 = "mat", cameraMatrix2 = "mat", distCoeffs2 = "mat", method = "int", prob = "dbl", threshold = "dbl", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "points1, points2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, method = RANSAC, prob = 0.999, threshold = 1.0, dst = NULL")
  )
  function(...) .ropecv_pick("cv_findEssentialMat", .sigs, list(...))
})

#' @title findFundamentalMat
#' @description ROpenCV 绑定。C++ 签名：<code>Mat findFundamentalMat(InputArray points1, InputArray points2, OutputArray mask, const UsacParams &amp; params)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findFundamentalMat__0 <- function(points1, points2, params, dst = NULL) {
  .Call(`_ROpenCV_cv_findFundamentalMat__0`, points1, points2, params, dst)
}

#' @title findFundamentalMat
#' @description ROpenCV 绑定。C++ 签名：<code>Mat findFundamentalMat(InputArray points1, InputArray points2, int method, double ransacReprojThreshold, double confidence, OutputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findFundamentalMat__1 <- function(points1, points2, method = FM_RANSAC, ransacReprojThreshold = 3, confidence = 0.99, dst = NULL) {
  .Call(`_ROpenCV_cv_findFundamentalMat__1`, points1, points2, method, ransacReprojThreshold, confidence, dst)
}

#' @title findFundamentalMat
#' @description ROpenCV 绑定。C++ 签名：<code>Mat findFundamentalMat(InputArray points1, InputArray points2, int method, double ransacReprojThreshold, double confidence, int maxIters, OutputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findFundamentalMat__2 <- function(points1, points2, method, ransacReprojThreshold, confidence, maxIters, dst = NULL) {
  .Call(`_ROpenCV_cv_findFundamentalMat__2`, points1, points2, method, ransacReprojThreshold, confidence, maxIters, dst)
}

# cv_findFundamentalMat
#' @rdname cv_findFundamentalMat
#' @export
cv_findFundamentalMat <- local({
  .sigs <- list(
    list(f = .ropecv_cv_findFundamentalMat__0, p = c(points1 = "mat", points2 = "mat", params = "lst", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "points1, points2, params, dst = NULL"),
    list(f = .ropecv_cv_findFundamentalMat__1, p = c(points1 = "mat", points2 = "mat", method = "int", ransacReprojThreshold = "dbl", confidence = "dbl", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "points1, points2, method = FM_RANSAC, ransacReprojThreshold = 3, confidence = 0.99, dst = NULL"),
    list(f = .ropecv_cv_findFundamentalMat__2, p = c(points1 = "mat", points2 = "mat", method = "int", ransacReprojThreshold = "dbl", confidence = "dbl", maxIters = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE), s = "points1, points2, method, ransacReprojThreshold, confidence, maxIters, dst = NULL")
  )
  function(...) .ropecv_pick("cv_findFundamentalMat", .sigs, list(...))
})

#' @title findHomography
#' @description ROpenCV 绑定。C++ 签名：<code>Mat findHomography(InputArray srcPoints, InputArray dstPoints, OutputArray mask, const UsacParams &amp; params)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findHomography__0 <- function(srcPoints, dstPoints, params, dst = NULL) {
  .Call(`_ROpenCV_cv_findHomography__0`, srcPoints, dstPoints, params, dst)
}

#' @title findHomography
#' @description ROpenCV 绑定。C++ 签名：<code>Mat findHomography(InputArray srcPoints, InputArray dstPoints, int method, double ransacReprojThreshold, OutputArray mask, const int maxIters, const double confidence)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_findHomography__1 <- function(srcPoints, dstPoints, method = 0, ransacReprojThreshold = 3, maxIters = 2000, confidence = 0.995, dst = NULL) {
  .Call(`_ROpenCV_cv_findHomography__1`, srcPoints, dstPoints, method, ransacReprojThreshold, maxIters, confidence, dst)
}

# cv_findHomography
#' @rdname cv_findHomography
#' @export
cv_findHomography <- local({
  .sigs <- list(
    list(f = .ropecv_cv_findHomography__0, p = c(srcPoints = "mat", dstPoints = "mat", params = "lst", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "srcPoints, dstPoints, params, dst = NULL"),
    list(f = .ropecv_cv_findHomography__1, p = c(srcPoints = "mat", dstPoints = "mat", method = "int", ransacReprojThreshold = "dbl", maxIters = "int", confidence = "dbl", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "srcPoints, dstPoints, method = 0, ransacReprojThreshold = 3, maxIters = 2000, confidence = 0.995, dst = NULL")
  )
  function(...) .ropecv_pick("cv_findHomography", .sigs, list(...))
})

#' @title initUndistortRectifyMap
#' @description ROpenCV 绑定。C++ 签名：<code>void initUndistortRectifyMap(InputArray K, InputArray D, InputArray R, InputArray P, const cv::Size&amp; size, int m1type, OutputArray map1, OutputArray map2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_fisheye_initUndistortRectifyMap <- function(K, D, R, P, size, m1type, map1 = NULL, map2 = NULL) {
  .Call(`_ROpenCV_cv_fisheye_initUndistortRectifyMap`, K, D, R, P, size, m1type, map1, map2)
}

#' @title projectPoints
#' @description ROpenCV 绑定。C++ 签名：<code>void projectPoints(InputArray objectPoints, OutputArray imagePoints, InputArray rvec, InputArray tvec, InputArray K, InputArray D, double alpha, OutputArray jacobian)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_fisheye_projectPoints <- function(objectPoints, rvec, tvec, K, D, alpha = 0, imagePoints = NULL, jacobian = NULL) {
  .Call(`_ROpenCV_cv_fisheye_projectPoints`, objectPoints, rvec, tvec, K, D, alpha, imagePoints, jacobian)
}

#' @title solvePnP
#' @description ROpenCV 绑定。C++ 签名：<code>bool solvePnP(InputArray objectPoints, InputArray imagePoints, InputArray cameraMatrix, InputArray distCoeffs, OutputArray rvec, OutputArray tvec, bool useExtrinsicGuess, int flags, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_fisheye_solvePnP <- function(objectPoints, imagePoints, cameraMatrix, distCoeffs, useExtrinsicGuess = FALSE, flags = SOLVEPNP_ITERATIVE, criteria = c(6, 10, 1e-8), rvec = NULL, tvec = NULL) {
  .Call(`_ROpenCV_cv_fisheye_solvePnP`, objectPoints, imagePoints, cameraMatrix, distCoeffs, useExtrinsicGuess, flags, criteria, rvec, tvec)
}

#' @title undistortImage
#' @description ROpenCV 绑定。C++ 签名：<code>void undistortImage(InputArray distorted, OutputArray undistorted, InputArray K, InputArray D, InputArray Knew, const Size&amp; new_size)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_fisheye_undistortImage <- function(distorted, K, D, Knew = NULL, new_size = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_fisheye_undistortImage`, distorted, K, D, Knew, new_size, dst)
}

#' @title undistortPoints
#' @description ROpenCV 绑定。C++ 签名：<code>void undistortPoints(InputArray distorted, OutputArray undistorted, InputArray K, InputArray D, InputArray R, InputArray P, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_fisheye_undistortPoints <- function(distorted, K, D, R = NULL, P = NULL, criteria = c(6, 10, 1e-8), dst = NULL) {
  .Call(`_ROpenCV_cv_fisheye_undistortPoints`, distorted, K, D, R, P, criteria, dst)
}

#' @title getDefaultNewCameraMatrix
#' @description ROpenCV 绑定。C++ 签名：<code>Mat getDefaultNewCameraMatrix(InputArray cameraMatrix, Size imgsize, bool centerPrincipalPoint)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_getDefaultNewCameraMatrix <- function(cameraMatrix, imgsize = NULL, centerPrincipalPoint = FALSE) {
  .Call(`_ROpenCV_cv_getDefaultNewCameraMatrix`, cameraMatrix, imgsize, centerPrincipalPoint)
}

#' @title getOptimalNewCameraMatrix
#' @description ROpenCV 绑定。C++ 签名：<code>Mat getOptimalNewCameraMatrix(InputArray cameraMatrix, InputArray distCoeffs, Size imageSize, double alpha, Size newImgSize, Rect* validPixROI, bool centerPrincipalPoint)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_getOptimalNewCameraMatrix <- function(cameraMatrix, distCoeffs, imageSize, alpha, newImgSize = NULL, centerPrincipalPoint = FALSE) {
  .Call(`_ROpenCV_cv_getOptimalNewCameraMatrix`, cameraMatrix, distCoeffs, imageSize, alpha, newImgSize, centerPrincipalPoint)
}

#' @title getUndistortRectangles
#' @description ROpenCV 绑定。C++ 签名：<code>void getUndistortRectangles(InputArray cameraMatrix, InputArray distCoeffs, InputArray R, InputArray newCameraMatrix, Size imgSize, Rect_&lt;double&gt;&amp; inner, Rect_&lt;double&gt;&amp; outer)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getUndistortRectangles <- function(cameraMatrix, distCoeffs, R, newCameraMatrix, imgSize, inner = NULL, outer = NULL) {
  .Call(`_ROpenCV_cv_getUndistortRectangles`, cameraMatrix, distCoeffs, R, newCameraMatrix, imgSize, inner, outer)
}

#' @title initInverseRectificationMap
#' @description ROpenCV 绑定。C++ 签名：<code>void initInverseRectificationMap(InputArray cameraMatrix, InputArray distCoeffs, InputArray R, InputArray newCameraMatrix, const Size&amp; size, int m1type, OutputArray map1, OutputArray map2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_initInverseRectificationMap <- function(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1 = NULL, map2 = NULL) {
  .Call(`_ROpenCV_cv_initInverseRectificationMap`, cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2)
}

#' @title initUndistortRectifyMap
#' @description ROpenCV 绑定。C++ 签名：<code>void initUndistortRectifyMap(InputArray cameraMatrix, InputArray distCoeffs, InputArray R, InputArray newCameraMatrix, Size size, int m1type, OutputArray map1, OutputArray map2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_initUndistortRectifyMap <- function(cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1 = NULL, map2 = NULL) {
  .Call(`_ROpenCV_cv_initUndistortRectifyMap`, cameraMatrix, distCoeffs, R, newCameraMatrix, size, m1type, map1, map2)
}

#' @title initWideAngleProjMap
#' @description ROpenCV 绑定。C++ 签名：<code>float initWideAngleProjMap(InputArray cameraMatrix, InputArray distCoeffs, Size imageSize, int destImageWidth, int m1type, OutputArray map1, OutputArray map2, enum UndistortTypes projType, double alpha)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_initWideAngleProjMap <- function(cameraMatrix, distCoeffs, imageSize, destImageWidth, m1type, projType = PROJ_SPHERICAL_EQRECT, alpha = 0, map1 = NULL, map2 = NULL) {
  .Call(`_ROpenCV_cv_initWideAngleProjMap`, cameraMatrix, distCoeffs, imageSize, destImageWidth, m1type, projType, alpha, map1, map2)
}

#' @title loadMesh
#' @description ROpenCV 绑定。C++ 签名：<code>void loadMesh(const String &amp; filename, OutputArray vertices, OutputArrayOfArrays indices, OutputArray normals, OutputArray colors, OutputArray texCoords)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_loadMesh <- function(filename, vertices = NULL, indices = NULL, normals = NULL, colors = NULL, texCoords = NULL) {
  .Call(`_ROpenCV_cv_loadMesh`, filename, vertices, indices, normals, colors, texCoords)
}

#' @title loadPointCloud
#' @description ROpenCV 绑定。C++ 签名：<code>void loadPointCloud(const String &amp; filename, OutputArray vertices, OutputArray normals, OutputArray rgb)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_loadPointCloud <- function(filename, vertices = NULL, normals = NULL, rgb = NULL) {
  .Call(`_ROpenCV_cv_loadPointCloud`, filename, vertices, normals, rgb)
}

#' @title matMulDeriv
#' @description ROpenCV 绑定。C++ 签名：<code>void matMulDeriv(InputArray A, InputArray B, OutputArray dABdA, OutputArray dABdB)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_matMulDeriv <- function(A, B, dABdA = NULL, dABdB = NULL) {
  .Call(`_ROpenCV_cv_matMulDeriv`, A, B, dABdA, dABdB)
}

#' @title projectPoints
#' @description ROpenCV 绑定。C++ 签名：<code>void projectPoints(InputArray objectPoints, InputArray rvec, InputArray tvec, InputArray cameraMatrix, InputArray distCoeffs, OutputArray imagePoints, OutputArray jacobian, double aspectRatio)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_projectPoints__0 <- function(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, aspectRatio = 0, imagePoints = NULL, jacobian = NULL) {
  .Call(`_ROpenCV_cv_projectPoints__0`, objectPoints, rvec, tvec, cameraMatrix, distCoeffs, aspectRatio, imagePoints, jacobian)
}

#' @title projectPoints
#' @description ROpenCV 绑定。C++ 签名：<code>void projectPoints(InputArray objectPoints, InputArray rvec, InputArray tvec, InputArray cameraMatrix, InputArray distCoeffs, OutputArray imagePoints, OutputArray dpdr, OutputArray dpdt, OutputArray dpdf, OutputArray dpdc, OutputArray dpdk, OutputArray dpdo, double aspectRatio)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_projectPoints__1 <- function(objectPoints, rvec, tvec, cameraMatrix, distCoeffs, aspectRatio = 0, imagePoints = NULL, dpdr = NULL, dpdt = NULL, dpdf = NULL, dpdc = NULL, dpdk = NULL, dpdo = NULL) {
  .Call(`_ROpenCV_cv_projectPoints__1`, objectPoints, rvec, tvec, cameraMatrix, distCoeffs, aspectRatio, imagePoints, dpdr, dpdt, dpdf, dpdc, dpdk, dpdo)
}

# cv_projectPoints
#' @rdname cv_projectPoints
#' @export
cv_projectPoints <- local({
  .sigs <- list(
    list(f = .ropecv_cv_projectPoints__0, p = c(objectPoints = "mat", rvec = "mat", tvec = "mat", cameraMatrix = "mat", distCoeffs = "mat", aspectRatio = "dbl", imagePoints = "mat", jacobian = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "objectPoints, rvec, tvec, cameraMatrix, distCoeffs, aspectRatio = 0, imagePoints = NULL, jacobian = NULL"),
    list(f = .ropecv_cv_projectPoints__1, p = c(objectPoints = "mat", rvec = "mat", tvec = "mat", cameraMatrix = "mat", distCoeffs = "mat", aspectRatio = "dbl", imagePoints = "mat", dpdr = "mat", dpdt = "mat", dpdf = "mat", dpdc = "mat", dpdk = "mat", dpdo = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, rvec, tvec, cameraMatrix, distCoeffs, aspectRatio = 0, imagePoints = NULL, dpdr = NULL, dpdt = NULL, dpdf = NULL, dpdc = NULL, dpdk = NULL, dpdo = NULL")
  )
  function(...) .ropecv_pick("cv_projectPoints", .sigs, list(...))
})

#' @title recoverPose
#' @description ROpenCV 绑定。C++ 签名：<code>int recoverPose(InputArray E, InputArray points1, InputArray points2, InputArray cameraMatrix, OutputArray R, OutputArray t, InputOutputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_recoverPose__0 <- function(E, points1, points2, cameraMatrix, mask = NULL, R = NULL, t = NULL) {
  .Call(`_ROpenCV_cv_recoverPose__0`, E, points1, points2, cameraMatrix, mask, R, t)
}

#' @title recoverPose
#' @description ROpenCV 绑定。C++ 签名：<code>int recoverPose(InputArray E, InputArray points1, InputArray points2, InputArray cameraMatrix, OutputArray R, OutputArray t, double distanceThresh, InputOutputArray mask, OutputArray triangulatedPoints)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_recoverPose__1 <- function(E, points1, points2, cameraMatrix, distanceThresh, mask = NULL, R = NULL, t = NULL, triangulatedPoints = NULL) {
  .Call(`_ROpenCV_cv_recoverPose__1`, E, points1, points2, cameraMatrix, distanceThresh, mask, R, t, triangulatedPoints)
}

#' @title recoverPose
#' @description ROpenCV 绑定。C++ 签名：<code>int recoverPose(InputArray points1, InputArray points2, InputArray cameraMatrix1, InputArray distCoeffs1, InputArray cameraMatrix2, InputArray distCoeffs2, OutputArray E, OutputArray R, OutputArray t, int method, double prob, double threshold, InputOutputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_recoverPose__2 <- function(points1, points2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, method = RANSAC, prob = 0.999, threshold = 1.0, mask = NULL, E = NULL, R = NULL, t = NULL) {
  .Call(`_ROpenCV_cv_recoverPose__2`, points1, points2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, method, prob, threshold, mask, E, R, t)
}

# cv_recoverPose
#' @rdname cv_recoverPose
#' @export
cv_recoverPose <- local({
  .sigs <- list(
    list(f = .ropecv_cv_recoverPose__0, p = c(E = "mat", points1 = "mat", points2 = "mat", cameraMatrix = "mat", mask = "mat", R = "mat", t = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "E, points1, points2, cameraMatrix, mask = NULL, R = NULL, t = NULL"),
    list(f = .ropecv_cv_recoverPose__1, p = c(E = "mat", points1 = "mat", points2 = "mat", cameraMatrix = "mat", distanceThresh = "dbl", mask = "mat", R = "mat", t = "mat", triangulatedPoints = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "E, points1, points2, cameraMatrix, distanceThresh, mask = NULL, R = NULL, t = NULL, triangulatedPoints = NULL"),
    list(f = .ropecv_cv_recoverPose__2, p = c(points1 = "mat", points2 = "mat", cameraMatrix1 = "mat", distCoeffs1 = "mat", cameraMatrix2 = "mat", distCoeffs2 = "mat", method = "int", prob = "dbl", threshold = "dbl", mask = "mat", E = "mat", R = "mat", t = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "points1, points2, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, method = RANSAC, prob = 0.999, threshold = 1.0, mask = NULL, E = NULL, R = NULL, t = NULL")
  )
  function(...) .ropecv_pick("cv_recoverPose", .sigs, list(...))
})

#' @title sampsonDistance
#' @description ROpenCV 绑定。C++ 签名：<code>double sampsonDistance(InputArray pt1, InputArray pt2, InputArray F)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_sampsonDistance <- function(pt1, pt2, F) {
  .Call(`_ROpenCV_cv_sampsonDistance`, pt1, pt2, F)
}

#' @title saveMesh
#' @description ROpenCV 绑定。C++ 签名：<code>void saveMesh(const String &amp; filename, InputArray vertices, InputArrayOfArrays indices, InputArray normals, InputArray colors, InputArray texCoords)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_saveMesh <- function(filename, vertices, indices, normals = NULL, colors = NULL, texCoords = NULL) {
  .Call(`_ROpenCV_cv_saveMesh`, filename, vertices, indices, normals, colors, texCoords)
}

#' @title savePointCloud
#' @description ROpenCV 绑定。C++ 签名：<code>void savePointCloud(const String &amp; filename, InputArray vertices, InputArray normals, InputArray rgb)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_savePointCloud <- function(filename, vertices, normals = NULL, rgb = NULL) {
  .Call(`_ROpenCV_cv_savePointCloud`, filename, vertices, normals, rgb)
}

#' @title solveP3P
#' @description ROpenCV 绑定。C++ 签名：<code>int solveP3P(InputArray objectPoints, InputArray imagePoints, InputArray cameraMatrix, InputArray distCoeffs, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_solveP3P <- function(objectPoints, imagePoints, cameraMatrix, distCoeffs, flags, rvecs = NULL, tvecs = NULL) {
  .Call(`_ROpenCV_cv_solveP3P`, objectPoints, imagePoints, cameraMatrix, distCoeffs, flags, rvecs, tvecs)
}

#' @title solvePnP
#' @description ROpenCV 绑定。C++ 签名：<code>bool solvePnP(InputArray objectPoints, InputArray imagePoints, InputArray cameraMatrix, InputArray distCoeffs, OutputArray rvec, OutputArray tvec, bool useExtrinsicGuess, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_solvePnP <- function(objectPoints, imagePoints, cameraMatrix, distCoeffs, useExtrinsicGuess = FALSE, flags = SOLVEPNP_ITERATIVE, rvec = NULL, tvec = NULL) {
  .Call(`_ROpenCV_cv_solvePnP`, objectPoints, imagePoints, cameraMatrix, distCoeffs, useExtrinsicGuess, flags, rvec, tvec)
}

#' @title solvePnPGeneric
#' @description ROpenCV 绑定。C++ 签名：<code>int solvePnPGeneric(InputArray objectPoints, InputArray imagePoints, InputArray cameraMatrix, InputArray distCoeffs, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, bool useExtrinsicGuess, int flags, InputArray rvec, InputArray tvec, OutputArray reprojectionError)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_solvePnPGeneric <- function(objectPoints, imagePoints, cameraMatrix, distCoeffs, useExtrinsicGuess = FALSE, flags = SOLVEPNP_ITERATIVE, rvec = NULL, tvec = NULL, rvecs = NULL, tvecs = NULL, reprojectionError = NULL) {
  .Call(`_ROpenCV_cv_solvePnPGeneric`, objectPoints, imagePoints, cameraMatrix, distCoeffs, useExtrinsicGuess, flags, rvec, tvec, rvecs, tvecs, reprojectionError)
}

#' @title solvePnPRansac
#' @description ROpenCV 绑定。C++ 签名：<code>bool solvePnPRansac(InputArray objectPoints, InputArray imagePoints, InputOutputArray cameraMatrix, InputArray distCoeffs, OutputArray rvec, OutputArray tvec, OutputArray inliers, const UsacParams &amp; params)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_solvePnPRansac__0 <- function(objectPoints, imagePoints, cameraMatrix = NULL, distCoeffs, params = list(), rvec = NULL, tvec = NULL, inliers = NULL) {
  .Call(`_ROpenCV_cv_solvePnPRansac__0`, objectPoints, imagePoints, cameraMatrix, distCoeffs, params, rvec, tvec, inliers)
}

#' @title solvePnPRansac
#' @description ROpenCV 绑定。C++ 签名：<code>bool solvePnPRansac(InputArray objectPoints, InputArray imagePoints, InputArray cameraMatrix, InputArray distCoeffs, OutputArray rvec, OutputArray tvec, bool useExtrinsicGuess, int iterationsCount, float reprojectionError, double confidence, OutputArray inliers, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_solvePnPRansac__1 <- function(objectPoints, imagePoints, cameraMatrix, distCoeffs, useExtrinsicGuess = FALSE, iterationsCount = 100, reprojectionError = 8.0, confidence = 0.99, flags = SOLVEPNP_ITERATIVE, rvec = NULL, tvec = NULL, inliers = NULL) {
  .Call(`_ROpenCV_cv_solvePnPRansac__1`, objectPoints, imagePoints, cameraMatrix, distCoeffs, useExtrinsicGuess, iterationsCount, reprojectionError, confidence, flags, rvec, tvec, inliers)
}

# cv_solvePnPRansac
#' @rdname cv_solvePnPRansac
#' @export
cv_solvePnPRansac <- local({
  .sigs <- list(
    list(f = .ropecv_cv_solvePnPRansac__0, p = c(objectPoints = "mat", imagePoints = "mat", cameraMatrix = "mat", distCoeffs = "mat", params = "lst", rvec = "mat", tvec = "mat", inliers = "mat"), r = c(TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, imagePoints, cameraMatrix = NULL, distCoeffs, params = list(), rvec = NULL, tvec = NULL, inliers = NULL"),
    list(f = .ropecv_cv_solvePnPRansac__1, p = c(objectPoints = "mat", imagePoints = "mat", cameraMatrix = "mat", distCoeffs = "mat", useExtrinsicGuess = "lgl", iterationsCount = "int", reprojectionError = "dbl", confidence = "dbl", flags = "int", rvec = "mat", tvec = "mat", inliers = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "objectPoints, imagePoints, cameraMatrix, distCoeffs, useExtrinsicGuess = FALSE, iterationsCount = 100, reprojectionError = 8.0, confidence = 0.99, flags = SOLVEPNP_ITERATIVE, rvec = NULL, tvec = NULL, inliers = NULL")
  )
  function(...) .ropecv_pick("cv_solvePnPRansac", .sigs, list(...))
})

#' @title solvePnPRefineLM
#' @description ROpenCV 绑定。C++ 签名：<code>void solvePnPRefineLM(InputArray objectPoints, InputArray imagePoints, InputArray cameraMatrix, InputArray distCoeffs, InputOutputArray rvec, InputOutputArray tvec, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_solvePnPRefineLM <- function(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec = NULL, tvec = NULL, criteria = c(5, 20, 1.1920929e-07)) {
  .Call(`_ROpenCV_cv_solvePnPRefineLM`, objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria)
}

#' @title solvePnPRefineVVS
#' @description ROpenCV 绑定。C++ 签名：<code>void solvePnPRefineVVS(InputArray objectPoints, InputArray imagePoints, InputArray cameraMatrix, InputArray distCoeffs, InputOutputArray rvec, InputOutputArray tvec, TermCriteria criteria, double VVSlambda)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_solvePnPRefineVVS <- function(objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec = NULL, tvec = NULL, criteria = c(5, 20, 1.1920929e-07), VVSlambda = 1) {
  .Call(`_ROpenCV_cv_solvePnPRefineVVS`, objectPoints, imagePoints, cameraMatrix, distCoeffs, rvec, tvec, criteria, VVSlambda)
}

#' @title triangleRasterize
#' @description ROpenCV 绑定。C++ 签名：<code>void triangleRasterize(InputArray vertices, InputArray indices, InputArray colors, InputOutputArray colorBuf, InputOutputArray depthBuf, InputArray world2cam, double fovY, double zNear, double zFar, const TriangleRasterizeSettings&amp; settings)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_triangleRasterize <- function(vertices, indices, colors, colorBuf = NULL, depthBuf = NULL, world2cam, fovY, zNear, zFar, settings = NULL) {
  .Call(`_ROpenCV_cv_triangleRasterize`, vertices, indices, colors, colorBuf, depthBuf, world2cam, fovY, zNear, zFar, settings)
}

#' @title triangleRasterizeColor
#' @description ROpenCV 绑定。C++ 签名：<code>void triangleRasterizeColor(InputArray vertices, InputArray indices, InputArray colors, InputOutputArray colorBuf, InputArray world2cam, double fovY, double zNear, double zFar, const TriangleRasterizeSettings&amp; settings)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>colorBuf</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_triangleRasterizeColor <- function(vertices, indices, colors, colorBuf = NULL, world2cam, fovY, zNear, zFar, settings = NULL) {
  .Call(`_ROpenCV_cv_triangleRasterizeColor`, vertices, indices, colors, colorBuf, world2cam, fovY, zNear, zFar, settings)
}

#' @title triangleRasterizeDepth
#' @description ROpenCV 绑定。C++ 签名：<code>void triangleRasterizeDepth(InputArray vertices, InputArray indices, InputOutputArray depthBuf, InputArray world2cam, double fovY, double zNear, double zFar, const TriangleRasterizeSettings&amp; settings)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>depthBuf</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_triangleRasterizeDepth <- function(vertices, indices, depthBuf = NULL, world2cam, fovY, zNear, zFar, settings = NULL) {
  .Call(`_ROpenCV_cv_triangleRasterizeDepth`, vertices, indices, depthBuf, world2cam, fovY, zNear, zFar, settings)
}

#' @title triangulatePoints
#' @description ROpenCV 绑定。C++ 签名：<code>void triangulatePoints(InputArray projMatr1, InputArray projMatr2, InputArray projPoints1, InputArray projPoints2, OutputArray points4D)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_triangulatePoints <- function(projMatr1, projMatr2, projPoints1, projPoints2, dst = NULL) {
  .Call(`_ROpenCV_cv_triangulatePoints`, projMatr1, projMatr2, projPoints1, projPoints2, dst)
}

#' @title undistort
#' @description ROpenCV 绑定。C++ 签名：<code>void undistort(InputArray src, OutputArray dst, InputArray cameraMatrix, InputArray distCoeffs, InputArray newCameraMatrix)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_undistort <- function(src, cameraMatrix, distCoeffs, newCameraMatrix = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_undistort`, src, cameraMatrix, distCoeffs, newCameraMatrix, dst)
}

#' @title undistortImagePoints
#' @description ROpenCV 绑定。C++ 签名：<code>void undistortImagePoints(InputArray src, OutputArray dst, InputArray cameraMatrix, InputArray distCoeffs, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_undistortImagePoints <- function(src, cameraMatrix, distCoeffs, criteria = c(6, 5, 0.01), dst = NULL) {
  .Call(`_ROpenCV_cv_undistortImagePoints`, src, cameraMatrix, distCoeffs, criteria, dst)
}

#' @title undistortPoints
#' @description ROpenCV 绑定。C++ 签名：<code>void undistortPoints(InputArray src, OutputArray dst, InputArray cameraMatrix, InputArray distCoeffs, InputArray R, InputArray P, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_undistortPoints <- function(src, cameraMatrix, distCoeffs, R = NULL, P = NULL, criteria = c(2, 5, 0.01), dst = NULL) {
  .Call(`_ROpenCV_cv_undistortPoints`, src, cameraMatrix, distCoeffs, R, P, criteria, dst)
}
