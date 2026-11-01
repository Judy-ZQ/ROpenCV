% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_rotatedRectangleIntersection}
\alias{cv_rotatedRectangleIntersection}
\title{Finds out if there is any intersection between two rotated rectangles}
\usage{cv_rotatedRectangleIntersection(rect1, rect2, dst = NULL)}
\arguments{
\item{rect1}{First rectangle}
\item{rect2}{Second rectangle}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Finds out if there is any intersection between two rotated rectangles.}
\details{
If there is then the vertices of the intersecting region are returned as well.

Below are some examples of intersection configurations. The hatched pattern indicates the intersecting region and the red vertices are returned by the function.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
