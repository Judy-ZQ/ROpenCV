# 由 tools/gen/emit.py 生成，请勿手改。

#' @title filterSpeckles
#' @description ROpenCV 绑定。C++ 签名：<code>void filterSpeckles(InputOutputArray img, double newVal, int maxSpeckleSize, double maxDiff, InputOutputArray buf)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_filterSpeckles <- function(img = NULL, newVal, maxSpeckleSize, maxDiff, buf = NULL) {
  .Call(`_ROpenCV_cv_filterSpeckles`, img, newVal, maxSpeckleSize, maxDiff, buf)
}

#' @title stereoRectify
#' @description ROpenCV 绑定。C++ 签名：<code>void stereoRectify(InputArray K1, InputArray D1, InputArray K2, InputArray D2, const Size &amp; imageSize, InputArray R, InputArray tvec, OutputArray R1, OutputArray R2, OutputArray P1, OutputArray P2, OutputArray Q, int flags, const Size &amp; newImageSize, double balance, double fov_scale)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_fisheye_stereoRectify <- function(K1, D1, K2, D2, imageSize, R, tvec, flags, newImageSize = NULL, balance = 0.0, fov_scale = 1.0, R1 = NULL, R2 = NULL, P1 = NULL, P2 = NULL, Q = NULL) {
  .Call(`_ROpenCV_cv_fisheye_stereoRectify`, K1, D1, K2, D2, imageSize, R, tvec, flags, newImageSize, balance, fov_scale, R1, R2, P1, P2, Q)
}

#' @title getValidDisparityROI
#' @description ROpenCV 绑定。C++ 签名：<code>Rect getValidDisparityROI(Rect roi1, Rect roi2, int minDisparity, int numberOfDisparities, int blockSize)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getValidDisparityROI <- function(roi1, roi2, minDisparity, numberOfDisparities, blockSize) {
  .Call(`_ROpenCV_cv_getValidDisparityROI`, roi1, roi2, minDisparity, numberOfDisparities, blockSize)
}

#' @title rectify3Collinear
#' @description ROpenCV 绑定。C++ 签名：<code>float rectify3Collinear(InputArray _cameraMatrix1, InputArray _distCoeffs1, InputArray _cameraMatrix2, InputArray _distCoeffs2, InputArray _cameraMatrix3, InputArray _distCoeffs3, InputArrayOfArrays _imgpt1, InputArrayOfArrays _imgpt3, Size imageSize, InputArray _Rmat12, InputArray _Tmat12, InputArray _Rmat13, InputArray _Tmat13, OutputArray _Rmat1, OutputArray _Rmat2, OutputArray _Rmat3, OutputArray _Pmat1, OutputArray _Pmat2, OutputArray _Pmat3, OutputArray _Qmat, double alpha, Size newImgSize, Rect* roi1, Rect* roi2, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_rectify3Collinear <- function(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, Rmat12, Tmat12, Rmat13, Tmat13, alpha, newImgSize, flags, Rmat1 = NULL, Rmat2 = NULL, Rmat3 = NULL, Pmat1 = NULL, Pmat2 = NULL, Pmat3 = NULL, Qmat = NULL) {
  .Call(`_ROpenCV_cv_rectify3Collinear`, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, Rmat12, Tmat12, Rmat13, Tmat13, alpha, newImgSize, flags, Rmat1, Rmat2, Rmat3, Pmat1, Pmat2, Pmat3, Qmat)
}

#' @title reprojectImageTo3D
#' @description ROpenCV 绑定。C++ 签名：<code>void reprojectImageTo3D(InputArray disparity, OutputArray _3dImage, InputArray Q, bool handleMissingValues, int ddepth)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_reprojectImageTo3D <- function(disparity, Q, handleMissingValues = FALSE, ddepth = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_reprojectImageTo3D`, disparity, Q, handleMissingValues, ddepth, dst)
}

#' @title stereoRectify
#' @description ROpenCV 绑定。C++ 签名：<code>void stereoRectify(InputArray cameraMatrix1, InputArray distCoeffs1, InputArray cameraMatrix2, InputArray distCoeffs2, Size imageSize, InputArray R, InputArray T, OutputArray R1, OutputArray R2, OutputArray P1, OutputArray P2, OutputArray Q, int flags, double alpha, Size newImageSize, Rect* validPixROI1, Rect* validPixROI2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_stereoRectify <- function(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, flags = STEREO_ZERO_DISPARITY, alpha = -1, newImageSize = NULL, R1 = NULL, R2 = NULL, P1 = NULL, P2 = NULL, Q = NULL) {
  .Call(`_ROpenCV_cv_stereoRectify`, cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2, imageSize, R, T, flags, alpha, newImageSize, R1, R2, P1, P2, Q)
}

#' @title stereoRectifyUncalibrated
#' @description ROpenCV 绑定。C++ 签名：<code>bool stereoRectifyUncalibrated(InputArray points1, InputArray points2, InputArray F, Size imgSize, OutputArray H1, OutputArray H2, double threshold)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_stereoRectifyUncalibrated <- function(points1, points2, F, imgSize, threshold = 5, H1 = NULL, H2 = NULL) {
  .Call(`_ROpenCV_cv_stereoRectifyUncalibrated`, points1, points2, F, imgSize, threshold, H1, H2)
}

#' @title validateDisparity
#' @description ROpenCV 绑定。C++ 签名：<code>void validateDisparity(InputOutputArray disparity, InputArray cost, int minDisparity, int numberOfDisparities, int disp12MaxDisp)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>disparity</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_validateDisparity <- function(disparity = NULL, cost, minDisparity, numberOfDisparities, disp12MaxDisp = 1) {
  .Call(`_ROpenCV_cv_validateDisparity`, disparity, cost, minDisparity, numberOfDisparities, disp12MaxDisp)
}
