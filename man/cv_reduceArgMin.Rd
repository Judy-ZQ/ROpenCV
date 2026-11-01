% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_reduceArgMin}
\alias{cv_reduceArgMin}
\title{Finds indices of min elements along provided axis}
\usage{cv_reduceArgMin(src, axis, lastIndex = FALSE, dst = NULL)}
\arguments{
\item{src}{input single-channel array.}
\item{axis}{axis to reduce along.}
\item{lastIndex}{whether to get the index of first or last occurrence of min.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Finds indices of min elements along provided axis.}
\details{
\strong{注意：}If input or output array is not continuous, this function will create an internal copy. NaN handling is left unspecified, see patchNaNs . The returned index is always in bounds of input matrix.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_reduceArgMax}}、\code{\link{cv_minMaxLoc}}、\code{\link{cv_min}}、\code{\link{cv_max}}、\code{\link{cv_compare}}、\code{\link{cv_reduce}}}
\keyword{opencv}
