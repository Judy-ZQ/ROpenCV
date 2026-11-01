% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_phase}
\alias{cv_phase}
\title{Calculates the rotation angle of 2D vectors}
\usage{cv_phase(x, y, angleInDegrees = FALSE, dst = NULL)}
\arguments{
\item{x}{input floating-point array of x-coordinates of 2D vectors.}
\item{y}{input array of y-coordinates of 2D vectors; it must have the same size and the same type as x.}
\item{angleInDegrees}{when true, the function calculates the angle in degrees, otherwise, they are measured in radians.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the rotation angle of 2D vectors.}
\details{
The function cv::phase calculates the rotation angle of each 2D vector that is formed from the corresponding elements of x and y :

The angle estimation accuracy is about 0.3 degrees. When x(I)=y(I)=0 , the corresponding angle(I) is set to 0.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
