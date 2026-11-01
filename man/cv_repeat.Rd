% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_repeat}
\alias{cv_repeat}
\title{Fills the output array with repeated copies of the input array}
\usage{cv_repeat(src, ny, nx, dst = NULL)}
\arguments{
\item{src}{input array to replicate.}
\item{ny}{Flag to specify how many times the \code{src} is repeated along the vertical axis.}
\item{nx}{Flag to specify how many times the \code{src} is repeated along the horizontal axis.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Fills the output array with repeated copies of the input array.}
\details{
The function cv::repeat duplicates the input array one or more times along each of the two axes:

The second variant of the function is more convenient to use with MatrixExpressions.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_reduce}}}
\keyword{opencv}
