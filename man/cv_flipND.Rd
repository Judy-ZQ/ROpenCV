% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_flipND}
\alias{cv_flipND}
\title{Flips a n-dimensional at given axis}
\usage{cv_flipND(src, axis, dst = NULL)}
\arguments{
\item{src}{input array}
\item{axis}{axis that performs a flip on. 0 <= axis < src.dims.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Flips a n-dimensional at given axis.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
