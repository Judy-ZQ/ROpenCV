% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_undistortPoints}
\alias{cv_undistortPoints}
\title{Computes the ideal point coordinates from the observed point coordinates}
\usage{cv_undistortPoints(src, cameraMatrix, distCoeffs, R = NULL, P = NULL,
    criteria = c(2, 5, 0.01), dst = NULL)}
\arguments{
\item{src}{Observed point coordinates, 2xN/Nx2 1-channel or 1xN/Nx1 2-channel (CV_32FC2 or CV_64FC2) (or vector<Point2f> ).}
\item{cameraMatrix}{Camera matrix .}
\item{distCoeffs}{Input vector of distortion coefficients of 4, 5, 8, 12 or 14 elements. If the vector is NULL/empty, the zero distortion coefficients are assumed.}
\item{R}{Rectification transformation in the object space (3x3 matrix). R1 or R2 computed by stereoRectify can be passed here. If the matrix is empty, the identity transformation is used.}
\item{P}{New camera matrix (3x3) or new projection matrix (3x4) . P1 or P2 computed by stereoRectify can be passed here. If the matrix is empty, the identity new camera matrix is used.}
\item{criteria}{termination criteria for the iterative point undistortion algorithm}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes the ideal point coordinates from the observed point coordinates.}
\details{
The function is similar to undistort and initUndistortRectifyMap but it operates on a sparse set of points instead of a raster image. Also the function performs a reverse transformation to projectPoints. In case of a 3D object, it does not reconstruct its 3D coordinates, but for a planar object, it does, up to a translation vector, if the proper R is specified.

For each observed point coordinate the function computes:

where undistort is an approximate iterative algorithm that estimates the normalized original point coordinates out of the normalized distorted point coordinates ("normalized" means that the coordinates do not depend on the camera matrix).

The function can be used for both a stereo camera head or a monocular camera (when R is empty).

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
