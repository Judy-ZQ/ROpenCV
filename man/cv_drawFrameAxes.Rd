% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawFrameAxes}
\alias{cv_drawFrameAxes}
\title{Draw axes of the world/object coordinate system from pose estimation}
\usage{cv_drawFrameAxes(image = NULL, cameraMatrix, distCoeffs, rvec, tvec, length,
    thickness = 3)}
\arguments{
\item{image}{Input/output image. It must have 1 or 3 channels. The number of channels is not altered.}
\item{cameraMatrix}{Input 3x3 floating-point matrix of camera intrinsic parameters.}
\item{distCoeffs}{Input vector of distortion coefficients . If the vector is empty, the zero distortion coefficients are assumed.}
\item{rvec}{Rotation vector (see Rodrigues ) that, together with tvec, brings points from the model coordinate system to the camera coordinate system.}
\item{tvec}{Translation vector.}
\item{length}{Length of the painted axes in the same unit than tvec (usually in meters).}
\item{thickness}{Line thickness of the painted axes.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draw axes of the world/object coordinate system from pose estimation.}
\details{
This function draws the axes of the world/object coordinate system w.r.t. to the camera frame. OX is drawn in red, OY in green and OZ in blue.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\seealso{\code{\link{cv_solvePnP}}}
\keyword{opencv}
