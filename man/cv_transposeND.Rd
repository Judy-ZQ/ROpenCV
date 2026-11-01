% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_transposeND}
\alias{cv_transposeND}
\title{Transpose for n-dimensional matrices}
\usage{cv_transposeND(src, order, dst = NULL)}
\arguments{
\item{src}{input array.}
\item{order}{a permutation of [0,1,..,N-1] where N is the number of axes of src. The i'th axis of dst will correspond to the axis numbered order[i] of the input.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Transpose for n-dimensional matrices.}
\details{
\strong{注意：}Input should be continuous single-channel matrix.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
