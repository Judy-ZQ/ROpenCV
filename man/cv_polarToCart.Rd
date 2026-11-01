% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_polarToCart}
\alias{cv_polarToCart}
\title{Calculates x and y coordinates of 2D vectors from their magnitude and angle}
\usage{cv_polarToCart(magnitude, angle, angleInDegrees = FALSE, x = NULL, y = NULL)}
\arguments{
\item{magnitude}{input floating-point array of magnitudes of 2D vectors; it can be an empty matrix (=Mat ), in this case, the function assumes that all the magnitudes are =1; if it is not empty, it must have the same size and type as angle.}
\item{angle}{input floating-point array of angles of 2D vectors.}
\item{angleInDegrees}{when true, the input angles are measured in degrees, otherwise, they are measured in radians.}
\item{x}{output array of x-coordinates of 2D vectors; it has the same size and type as angle.}
\item{y}{output array of y-coordinates of 2D vectors; it has the same size and type as angle.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates x and y coordinates of 2D vectors from their magnitude and angle.}
\details{
The function cv::polarToCart calculates the Cartesian coordinates of each 2D vector represented by the corresponding elements of magnitude and angle:

The relative accuracy of the estimated coordinates is about 1e-6.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_cartToPolar}}、\code{\link{cv_magnitude}}、\code{\link{cv_phase}}、\code{\link{cv_exp}}、\code{\link{cv_log}}、\code{\link{cv_pow}}、\code{\link{cv_sqrt}}}
\keyword{opencv}
