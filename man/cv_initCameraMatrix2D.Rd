% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_initCameraMatrix2D}
\alias{cv_initCameraMatrix2D}
\title{Finds an initial camera intrinsic matrix from 3D-2D point correspondences}
\usage{cv_initCameraMatrix2D(objectPoints, imagePoints, imageSize, aspectRatio = 1)}
\arguments{
\item{objectPoints}{Vector of vectors of the calibration pattern points in the calibration pattern coordinate space. In the old interface all the per-view vectors are concatenated. See calibrateCamera for details.}
\item{imagePoints}{Vector of vectors of the projections of the calibration pattern points. In the old interface all the per-view vectors are concatenated.}
\item{imageSize}{Image size in pixels used to initialize the principal point.}
\item{aspectRatio}{If it is zero or negative, both and are estimated independently. Otherwise, .}
}
\value{\code{cvMat} 图像。}
\description{Finds an initial camera intrinsic matrix from 3D-2D point correspondences.}
\details{
The function estimates and returns an initial camera intrinsic matrix for the camera calibration process. Currently, the function only supports planar calibration patterns, which are patterns where each object point has z-coordinate =0.

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\keyword{opencv}
