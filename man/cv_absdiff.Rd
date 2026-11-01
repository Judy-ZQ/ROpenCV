% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_absdiff}
\alias{cv_absdiff}
\title{Calculates the per-element absolute difference between two arrays or between an array and a scalar}
\usage{cv_absdiff(src1, src2, dst = NULL)}
\arguments{
\item{src1}{first input array or a scalar.}
\item{src2}{second input array or a scalar.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the per-element absolute difference between two arrays or between an array and a scalar.}
\details{
The function cv::absdiff calculates: Absolute difference between two arrays when they have the same size and type:

Absolute difference between an array and a scalar when the second array is constructed from Scalar or has as many elements as the number of channels in \code{src1}:

Absolute difference between a scalar and an array when the first array is constructed from Scalar or has as many elements as the number of channels in \code{src2}:

where I is a multi-dimensional index of array elements. In case of multi-channel arrays, each channel is processed independently.

\strong{注意：}Saturation is not applied when the arrays have the depth CV_32S. You may even get a negative value in the case of overflow. (Python) Be careful to difference behaviour between src1/src2 are single number and they are tuple/array. \code{absdiff(src,X)} means \code{absdiff(src,(X,X,X,X))}. \code{absdiff(src,(X,))} means \code{absdiff(src,(X,0,0,0))}.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
