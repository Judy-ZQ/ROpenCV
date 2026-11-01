% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_convertPointsFromHomogeneous}
\alias{cv_convertPointsFromHomogeneous}
\title{Converts points from homogeneous to Euclidean space}
\usage{cv_convertPointsFromHomogeneous(src, dtype = -1, dst = NULL)}
\arguments{
\item{src}{Input vector of N-dimensional points.}
\item{dtype}{The desired output array depth (either CV_32F or CV_64F are currently supported). If it's -1, then it's set automatically to CV_32F or CV_64F, depending on the input depth.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Converts points from homogeneous to Euclidean space.}
\details{
The function converts points homogeneous to Euclidean space using perspective projection. That is, each point (x1, x2, ... x(n-1), xn) is converted to (x1/xn, x2/xn, ..., x(n-1)/xn). When xn=0, the output point coordinates will be (0,0,0,...).

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
