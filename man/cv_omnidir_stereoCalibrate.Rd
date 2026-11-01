% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_omnidir_stereoCalibrate}
\alias{cv_omnidir_stereoCalibrate}
\title{Stereo calibration for omnidirectional camera model}
\usage{cv_omnidir_stereoCalibrate(imageSize1, imageSize2, K1 = NULL, xi1 = NULL,
    D1 = NULL, K2 = NULL, xi2 = NULL, D2 = NULL, flags, criteria,
    objectPoints = NULL, imagePoints1 = NULL, imagePoints2 = NULL,
    rvec = NULL, tvec = NULL, rvecsL = NULL, tvecsL = NULL, idx = NULL)}
\arguments{
\item{imageSize1}{Image size of calibration images of the first camera.}
\item{imageSize2}{Image size of calibration images of the second camera.}
\item{K1}{Output camera matrix for the first camera.}
\item{xi1}{Output parameter xi of Mei's model for the first camera}
\item{D1}{Output distortion parameters for the first camera}
\item{K2}{Output camera matrix for the first camera.}
\item{xi2}{Output parameter xi of CMei's model for the second camera}
\item{D2}{Output distortion parameters for the second camera}
\item{flags}{The flags that control stereoCalibrate}
\item{criteria}{Termination criteria for optimization}
\item{objectPoints}{Object points in world (pattern) coordinate. Its type is vector<vector<Vec3f> >. It also can be vector of Mat with size 1xN/Nx1 and type CV_32FC3. Data with depth of 64_F is also acceptable.}
\item{imagePoints1}{The corresponding image points of the first camera, with type vector<vector<Vec2f> >. It must be the same size and the same type as objectPoints.}
\item{imagePoints2}{The corresponding image points of the second camera, with type vector<vector<Vec2f> >. It must be the same size and the same type as objectPoints.}
\item{rvec}{Output rotation between the first and second camera}
\item{tvec}{Output translation between the first and second camera}
\item{rvecsL}{Output rotation for each image of the first camera}
\item{tvecsL}{Output translation for each image of the first camera}
\item{idx}{Indices of image pairs that pass initialization, which are really used in calibration. So the size of rvecs is the same as idx.total . @}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Stereo calibration for omnidirectional camera model. It computes the intrinsic parameters for two cameras and the extrinsic parameters between two cameras. The default depth of outputs is CV_64F.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ccalib/omnidir.hpp>}
}
\keyword{opencv}
