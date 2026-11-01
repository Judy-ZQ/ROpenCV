% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_cartToPolar}
\alias{cv_cartToPolar}
\title{Calculates the magnitude and angle of 2D vectors}
\usage{cv_cartToPolar(x, y, angleInDegrees = FALSE, magnitude = NULL, angle = NULL)}
\arguments{
\item{x}{array of x-coordinates; this must be a single-precision or double-precision floating-point array.}
\item{y}{array of y-coordinates, that must have the same size and same type as x.}
\item{angleInDegrees}{a flag, indicating whether the angles are measured in radians (which is by default), or in degrees.}
\item{magnitude}{output array of magnitudes of the same size and type as x.}
\item{angle}{output array of angles that has the same size and type as x; the angles are measured in radians (from 0 to 2*Pi) or in degrees (0 to 360 degrees).}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the magnitude and angle of 2D vectors.}
\details{
The function cv::cartToPolar calculates either the magnitude, angle, or both for every 2D vector (x(I),y(I)):

The angles are calculated with accuracy about 0.3 degrees. For the point (0,0), the angle is set to 0.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_Sobel}}、\code{\link{cv_Scharr}}}
\keyword{opencv}
