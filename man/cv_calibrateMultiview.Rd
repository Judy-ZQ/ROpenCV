% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calibrateMultiview}
\alias{cv_calibrateMultiview}
\title{Estimates intrinsics and extrinsics (camera pose) for multi-camera system a.k.a multiview calibraton}
\usage{cv_calibrateMultiview(objPoints, imagePoints, imageSize, detectionMask,
    Ks = NULL, distortions = NULL, isFisheye, useIntrinsicsGuess = FALSE,
    flagsForIntrinsics = NULL, Rs = NULL, Ts = NULL, rvecs0 = NULL,
    tvecs0 = NULL, perFrameErrors = NULL, initializationPairs = NULL)}
\arguments{
\item{objPoints}{Calibration pattern object points. Expected shape: NUM_FRAMES x NUM_POINTS x 3. Supported data type: CV_32F.}
\item{imagePoints}{Detected pattern points on camera images. Expected shape: NUM_CAMERAS x NUM_FRAMES x NUM_POINTS x 2.}
\item{imageSize}{Images resolution.}
\item{detectionMask}{Pattern detection mask. Each value defines if i-camera observes calibration pattern in j moment of time. Expected size: NUM_CAMERAS x NUM_FRAMES. Expected type: CV_8U.}
\item{Ks}{Estimated floating-point camera intrinsic matrix. Output size: NUM_CAMERAS x 3 x 3.}
\item{distortions}{Distortion coefficients. Output size: NUM_CAMERAS x NUM_PARAMS.}
\item{isFisheye}{indicates whether i-th camera is fisheye. In case if the input data contains mix of pinhole and fisheye cameras Rational distortion model is used. See CALIB_RATIONAL_MODEL for details. Expected type: CV_8U.}
\item{useIntrinsicsGuess}{Use user specified intrinsic parameters (internal camera matrix and distortion). If true intrinsics are not estimated during calibration.}
\item{flagsForIntrinsics}{Flags used for each camera intrinsics calibration. Use per-camera call and \code{useIntrinsicsGuess} flag to get custom intrinsics calibration for each camera. See CALIB_USE_INTRINSIC_GUESS and other \code{CALIB_} constants. Expected shape: NUM_CAMERAS x 1. Supported data type: CV_32S.}
\item{Rs}{Rotation vectors relative to camera 0, where Rs[0] = 0. Output size: NUM_CAMERAS x 3 x 1. See Rodrigues.}
\item{Ts}{Estimated translation vectors relative to camera 0, where Ts[0] = 0. Output size: NUM_CAMERAS x 3 x 1.}
\item{rvecs0}{Estimated rotation vectors for camera 0. Output size: NUM_FRAMES x 3 x 1 (may contain null Mat, if frame is not valid). See Rodrigues.}
\item{tvecs0}{Translation vectors for camera 0. Output size: NUM_FRAMES x 3 x 1. (may contain null Mat, if frame is not valid).}
\item{perFrameErrors}{RMSE value for each visible frame, (-1 for non-visible). Output size: NUM_CAMERAS x NUM_FRAMES.}
\item{initializationPairs}{Pairs with camera indices that were used for initial pairwise stereo calibration. Output size: (NUM_CAMERAS-1) x 2.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Estimates intrinsics and extrinsics (camera pose) for multi-camera system a.k.a multiview calibraton.}
\details{
Similarly to calibrateCamera, the function minimizes the total re-projection error for all the points in all the available views from all cameras.

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\seealso{\code{\link{cv_findChessboardCorners}}、\code{\link{cv_findCirclesGrid}}、\code{\link{cv_calibrateCamera}}、\code{\link{cv_fisheye_calibrate}}}
\keyword{opencv}
