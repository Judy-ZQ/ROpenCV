% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fisheye_stereoRectify}
\alias{cv_fisheye_stereoRectify}
\title{Stereo rectification for fisheye camera model}
\usage{cv_fisheye_stereoRectify(K1, D1, K2, D2, imageSize, R, tvec, flags,
    newImageSize = NULL, balance = 0, fov_scale = 1, R1 = NULL, R2 = NULL,
    P1 = NULL, P2 = NULL, Q = NULL)}
\arguments{
\item{K1}{First camera intrinsic matrix.}
\item{D1}{First camera distortion parameters.}
\item{K2}{Second camera intrinsic matrix.}
\item{D2}{Second camera distortion parameters.}
\item{imageSize}{Size of the image used for stereo calibration.}
\item{R}{Rotation matrix between the coordinate systems of the first and the second cameras.}
\item{tvec}{Translation vector between coordinate systems of the cameras.}
\item{flags}{Operation flags that may be zero or cv::CALIB_ZERO_DISPARITY . If the flag is set, the function makes the principal points of each camera have the same pixel coordinates in the rectified views. And if the flag is not set, the function may still shift the images in the horizontal or vertical direction (depending on the orientation of epipolar lines) to maximize the useful image area.}
\item{newImageSize}{New image resolution after rectification. The same size should be passed to initUndistortRectifyMap (see the stereo_calib.cpp sample in OpenCV samples directory). When (0,0) is passed (default), it is set to the original imageSize . Setting it to larger value can help you preserve details in the original image, especially when there is a big radial distortion.}
\item{balance}{Sets the new focal length in range between the min focal length and the max focal length. Balance is in range of [0, 1].}
\item{fov_scale}{Divisor for new focal length.}
\item{R1}{Output 3x3 rectification transform (rotation matrix) for the first camera.}
\item{R2}{Output 3x3 rectification transform (rotation matrix) for the second camera.}
\item{P1}{Output 3x4 projection matrix in the new (rectified) coordinate systems for the first camera.}
\item{P2}{Output 3x4 projection matrix in the new (rectified) coordinate systems for the second camera.}
\item{Q}{Output disparity-to-depth mapping matrix (see reprojectImageTo3D ).}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Stereo rectification for fisheye camera model.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/stereo.hpp>}
}
\keyword{opencv}
