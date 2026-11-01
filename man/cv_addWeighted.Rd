% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_addWeighted}
\alias{cv_addWeighted}
\title{Calculates the weighted sum of two arrays}
\usage{cv_addWeighted(src1, alpha, src2, beta, gamma, dtype = -1, dst = NULL)}
\arguments{
\item{src1}{first input array.}
\item{alpha}{weight of the first array elements.}
\item{src2}{second input array of the same size and channel number as src1.}
\item{beta}{weight of the second array elements.}
\item{gamma}{scalar added to each sum.}
\item{dtype}{optional depth of the output array; when both input arrays have the same depth, dtype can be set to -1, which will be equivalent to src1.depth .}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the weighted sum of two arrays.}
\details{
The function addWeighted calculates the weighted sum of two arrays as follows:

where I is a multi-dimensional index of array elements. In case of multi-channel arrays, each channel is processed independently. The function can be replaced with a matrix expression:

\strong{注意：}Saturation is not applied when the output array has the depth CV_32S. You may even get result of an incorrect sign in the case of overflow.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_add}}、\code{\link{cv_subtract}}、\code{\link{cv_scaleAdd}}}
\keyword{opencv}
