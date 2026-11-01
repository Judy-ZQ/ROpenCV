% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_multiply}
\alias{cv_multiply}
\title{Calculates the per-element scaled product of two arrays}
\usage{cv_multiply(src1, src2, scale = 1, dtype = -1, dst = NULL)}
\arguments{
\item{src1}{first input array.}
\item{src2}{second input array of the same size and the same type as src1.}
\item{scale}{optional scale factor.}
\item{dtype}{optional depth of the output array}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the per-element scaled product of two arrays.}
\details{
The function multiply calculates the per-element product of two arrays:

There is also a MatrixExpressions -friendly variant of the first function. See Mat::mul .

For a not-per-element matrix product, see gemm .

\strong{注意：}Saturation is not applied when the output array has the depth CV_32S. You may even get result of an incorrect sign in the case of overflow. (Python) Be careful to difference behaviour between src1/src2 are single number and they are tuple/array. \code{multiply(src,X)} means \code{multiply(src,(X,X,X,X))}. \code{multiply(src,(X,))} means \code{multiply(src,(X,0,0,0))}.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_add}}、\code{\link{cv_subtract}}、\code{\link{cv_divide}}、\code{\link{cv_scaleAdd}}、\code{\link{cv_addWeighted}}、\code{\link{cv_accumulate}}、\code{\link{cv_accumulateProduct}}、\code{\link{cv_accumulateSquare}}}
\keyword{opencv}
