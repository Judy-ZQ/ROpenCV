# 由 tools/gen/emit.py 生成，请勿手改。

#' @title calibrate
#' @description ROpenCV 绑定。C++ 签名：<code>double calibrate(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints, Size size, InputOutputArray K, InputOutputArray xi, InputOutputArray D, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, int flags, TermCriteria criteria, OutputArray idx)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_omnidir_calibrate <- function(objectPoints, imagePoints, size, K = NULL, xi = NULL, D = NULL, flags, criteria, rvecs = NULL, tvecs = NULL, idx = NULL) {
  .Call(`_ROpenCV_cv_omnidir_calibrate`, objectPoints, imagePoints, size, K, xi, D, flags, criteria, rvecs, tvecs, idx)
}

#' @title initUndistortRectifyMap
#' @description ROpenCV 绑定。C++ 签名：<code>void initUndistortRectifyMap(InputArray K, InputArray D, InputArray xi, InputArray R, InputArray P, const cv::Size&amp; size, int m1type, OutputArray map1, OutputArray map2, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_omnidir_initUndistortRectifyMap <- function(K, D, xi, R, P, size, m1type, flags, map1 = NULL, map2 = NULL) {
  .Call(`_ROpenCV_cv_omnidir_initUndistortRectifyMap`, K, D, xi, R, P, size, m1type, flags, map1, map2)
}

#' @title projectPoints
#' @description ROpenCV 绑定。C++ 签名：<code>void projectPoints(InputArray objectPoints, OutputArray imagePoints, InputArray rvec, InputArray tvec, InputArray K, double xi, InputArray D, OutputArray jacobian)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_omnidir_projectPoints <- function(objectPoints, rvec, tvec, K, xi, D, imagePoints = NULL, jacobian = NULL) {
  .Call(`_ROpenCV_cv_omnidir_projectPoints`, objectPoints, rvec, tvec, K, xi, D, imagePoints, jacobian)
}

#' @title stereoCalibrate
#' @description ROpenCV 绑定。C++ 签名：<code>double stereoCalibrate(InputOutputArrayOfArrays objectPoints, InputOutputArrayOfArrays imagePoints1, InputOutputArrayOfArrays imagePoints2, const Size&amp; imageSize1, const Size&amp; imageSize2, InputOutputArray K1, InputOutputArray xi1, InputOutputArray D1, InputOutputArray K2, InputOutputArray xi2, InputOutputArray D2, OutputArray rvec, OutputArray tvec, OutputArrayOfArrays rvecsL, OutputArrayOfArrays tvecsL, int flags, TermCriteria criteria, OutputArray idx)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_omnidir_stereoCalibrate <- function(imageSize1, imageSize2, K1 = NULL, xi1 = NULL, D1 = NULL, K2 = NULL, xi2 = NULL, D2 = NULL, flags, criteria, objectPoints = NULL, imagePoints1 = NULL, imagePoints2 = NULL, rvec = NULL, tvec = NULL, rvecsL = NULL, tvecsL = NULL, idx = NULL) {
  .Call(`_ROpenCV_cv_omnidir_stereoCalibrate`, imageSize1, imageSize2, K1, xi1, D1, K2, xi2, D2, flags, criteria, objectPoints, imagePoints1, imagePoints2, rvec, tvec, rvecsL, tvecsL, idx)
}

#' @title stereoRectify
#' @description ROpenCV 绑定。C++ 签名：<code>void stereoRectify(InputArray R, InputArray T, OutputArray R1, OutputArray R2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_omnidir_stereoRectify <- function(R, T, R1 = NULL, R2 = NULL) {
  .Call(`_ROpenCV_cv_omnidir_stereoRectify`, R, T, R1, R2)
}

#' @title undistortImage
#' @description ROpenCV 绑定。C++ 签名：<code>void undistortImage(InputArray distorted, OutputArray undistorted, InputArray K, InputArray D, InputArray xi, int flags, InputArray Knew, const Size&amp; new_size, InputArray R)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_omnidir_undistortImage <- function(distorted, K, D, xi, flags, Knew = NULL, new_size = NULL, R, dst = NULL) {
  .Call(`_ROpenCV_cv_omnidir_undistortImage`, distorted, K, D, xi, flags, Knew, new_size, R, dst)
}

#' @title undistortPoints
#' @description ROpenCV 绑定。C++ 签名：<code>void undistortPoints(InputArray distorted, OutputArray undistorted, InputArray K, InputArray D, InputArray xi, InputArray R)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_omnidir_undistortPoints <- function(distorted, K, D, xi, R, dst = NULL) {
  .Call(`_ROpenCV_cv_omnidir_undistortPoints`, distorted, K, D, xi, R, dst)
}

#' @title stereoReconstruct
#' @description ROpenCV 绑定。C++ 签名：<code>void stereoReconstruct(InputArray image1, InputArray image2, InputArray K1, InputArray D1, InputArray xi1, InputArray K2, InputArray D2, InputArray xi2, InputArray R, InputArray T, int flag, int numDisparities, int SADWindowSize, OutputArray disparity, OutputArray image1Rec, OutputArray image2Rec, const Size&amp; newSize, InputArray Knew, OutputArray pointCloud, int pointType)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_stereoReconstruct <- function(image1, image2, K1, D1, xi1, K2, D2, xi2, R, T, flag, numDisparities, SADWindowSize, newSize = NULL, Knew = NULL, pointType = XYZRGB, disparity = NULL, image1Rec = NULL, image2Rec = NULL, pointCloud = NULL) {
  .Call(`_ROpenCV_cv_stereoReconstruct`, image1, image2, K1, D1, xi1, K2, D2, xi2, R, T, flag, numDisparities, SADWindowSize, newSize, Knew, pointType, disparity, image1Rec, image2Rec, pointCloud)
}
