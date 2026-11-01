% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getDefaultNewCameraMatrix}
\alias{cv_getDefaultNewCameraMatrix}
\title{Returns the default new camera matrix}
\usage{cv_getDefaultNewCameraMatrix(cameraMatrix, imgsize = NULL,
    centerPrincipalPoint = FALSE)}
\arguments{
\item{cameraMatrix}{Input camera matrix.}
\item{imgsize}{Camera view image size in pixels.}
\item{centerPrincipalPoint}{Location of the principal point in the new camera matrix. The parameter indicates whether this location should be at the image center or not.}
}
\value{\code{cvMat} 图像。}
\description{Returns the default new camera matrix.}
\details{
The function returns the camera matrix that is either an exact copy of the input cameraMatrix (when centerPrinicipalPoint=false ), or the modified one (when centerPrincipalPoint=true).

In the latter case, the new camera matrix will be:

where and are and elements of cameraMatrix, respectively.

By default, the undistortion functions in OpenCV (see initUndistortRectifyMap, undistort) do not move the principal point. However, when you work with stereo, it is important to move the principal points in both views to the same y-coordinate (which is required by most of stereo correspondence algorithms), and may be to the same x-coordinate too. So, you can form the new camera matrix for each view where the principal points are located at the center.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
