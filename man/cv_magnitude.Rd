% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_magnitude}
\alias{cv_magnitude}
\title{Calculates the magnitude of 2D vectors}
\usage{cv_magnitude(x, y, dst = NULL)}
\arguments{
\item{x}{floating-point array of x-coordinates of the vectors.}
\item{y}{floating-point array of y-coordinates of the vectors; it must have the same size as x.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the magnitude of 2D vectors.}
\details{
The function cv::magnitude calculates the magnitude of 2D vectors formed from the corresponding elements of x and y arrays:

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_cartToPolar}}、\code{\link{cv_polarToCart}}、\code{\link{cv_phase}}、\code{\link{cv_sqrt}}}
\keyword{opencv}
