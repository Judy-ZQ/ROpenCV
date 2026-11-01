% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_convertPointsToHomogeneous}
\alias{cv_convertPointsToHomogeneous}
\title{Converts points from Euclidean to homogeneous space}
\usage{cv_convertPointsToHomogeneous(src, dtype = -1, dst = NULL)}
\arguments{
\item{src}{Input vector of N-dimensional points.}
\item{dtype}{The desired output array depth (either CV_32F or CV_64F are currently supported). If it's -1, then it's set automatically to CV_32F or CV_64F, depending on the input depth.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Converts points from Euclidean to homogeneous space.}
\details{
The function converts points from Euclidean to homogeneous space by appending 1's to the tuple of point coordinates. That is, each point (x1, x2, ..., xn) is converted to (x1, x2, ..., xn, 1).

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
