% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_reduce}
\alias{cv_reduce}
\title{Reduces a matrix to a vector}
\usage{cv_reduce(src, dim, rtype, dtype = -1, dst = NULL)}
\arguments{
\item{src}{input 2D matrix.}
\item{dim}{dimension index along which the matrix is reduced. 0 means that the matrix is reduced to a single row. 1 means that the matrix is reduced to a single column.}
\item{rtype}{reduction operation that could be one of ReduceTypes}
\item{dtype}{when negative, the output vector will have the same type as the input matrix, otherwise, its type will be CV_MAKE_TYPE(CV_MAT_DEPTH(dtype), src.channels ).}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Reduces a matrix to a vector.}
\details{
The function reduce reduces the matrix to a vector by treating the matrix rows/columns as a set of 1D vectors and performing the specified operation on the vectors until a single row/column is obtained. For example, the function can be used to compute horizontal and vertical projections of a raster image. In case of REDUCE_MAX and REDUCE_MIN, the output image should have the same type as the source one. In case of REDUCE_SUM, REDUCE_SUM2 and REDUCE_AVG, the output may have a larger element bit-depth to preserve accuracy. And multi-channel arrays are also supported in these two reduction modes.

The following code demonstrates its usage for a single channel matrix.

And the following code demonstrates its usage for a two-channel matrix.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_repeat}}、\code{\link{cv_reduceArgMin}}、\code{\link{cv_reduceArgMax}}}
\keyword{opencv}
