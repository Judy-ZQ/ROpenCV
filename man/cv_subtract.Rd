% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_subtract}
\alias{cv_subtract}
\title{Calculates the per-element difference between two arrays or array and a scalar}
\usage{cv_subtract(src1, src2, mask = NULL, dtype = -1, dst = NULL)}
\arguments{
\item{src1}{first input array or a scalar.}
\item{src2}{second input array or a scalar.}
\item{mask}{optional operation mask; this is CV_8U, CV8S or CV_Bool single channel array that specifies elements of the output array to be changed.}
\item{dtype}{optional depth of the output array}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the per-element difference between two arrays or array and a scalar.}
\details{
The function subtract calculates:

\itemize{
\item Difference between two arrays, when both input arrays have the same size and the same number of channels:
\item Difference between an array and a scalar, when src2 is constructed from Scalar or has the same number of elements as \code{src1.channels }:
\item Difference between a scalar and an array, when src1 is constructed from Scalar or has the same number of elements as \code{src2.channels }:
\item The reverse difference between a scalar and an array in the case of \code{SubRS}: where I is a multi-dimensional index of array elements. In case of multi-channel arrays, each channel is processed independently.
}

The first function in the list above can be replaced with matrix expressions:

The input arrays and the output array can all have the same or different depths. For example, you can subtract to 8-bit unsigned arrays and store the difference in a 16-bit signed array. Depth of the output array is determined by dtype parameter. In the second and third cases above, as well as in the first case, when src1.depth == src2.depth , dtype can be set to the default -1. In this case the output array will have the same depth as the input array, be it src1, src2 or both.

\strong{注意：}Saturation is not applied when the output array has the depth CV_32S. You may even get result of an incorrect sign in the case of overflow. (Python) Be careful to difference behaviour between src1/src2 are single number and they are tuple/array. \code{subtract(src,X)} means \code{subtract(src,(X,X,X,X))}. \code{subtract(src,(X,))} means \code{subtract(src,(X,0,0,0))}.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_add}}、\code{\link{cv_addWeighted}}、\code{\link{cv_scaleAdd}}}
\keyword{opencv}
