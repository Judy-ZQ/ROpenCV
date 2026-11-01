% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_omnidir_calibrate}
\alias{cv_omnidir_calibrate}
\title{Perform omnidirectional camera calibration, the default depth of outputs is CV_64F}
\usage{cv_omnidir_calibrate(objectPoints, imagePoints, size, K = NULL, xi = NULL,
    D = NULL, flags, criteria, rvecs = NULL, tvecs = NULL, idx = NULL)}
\arguments{
\item{objectPoints}{Vector of vector of Vec3f object points in world (pattern) coordinate. It also can be vector of Mat with size 1xN/Nx1 and type CV_32FC3. Data with depth of 64_F is also acceptable.}
\item{imagePoints}{Vector of vector of Vec2f corresponding image points of objectPoints. It must be the same size and the same type with objectPoints.}
\item{size}{Image size of calibration images.}
\item{K}{Output calibrated camera matrix.}
\item{xi}{Output parameter xi for CMei's model}
\item{D}{Output distortion parameters}
\item{flags}{The flags that control calibrate}
\item{criteria}{Termination criteria for optimization}
\item{rvecs}{Output rotations for each calibration images}
\item{tvecs}{Output translation for each calibration images}
\item{idx}{Indices of images that pass initialization, which are really used in calibration. So the size of rvecs is the same as idx.total .}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Perform omnidirectional camera calibration, the default depth of outputs is CV_64F.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ccalib/omnidir.hpp>}
}
\keyword{opencv}
