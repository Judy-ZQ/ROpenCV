% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_mulTransposed}
\alias{cv_mulTransposed}
\title{Calculates the product of a matrix and its transposition}
\usage{cv_mulTransposed(src, aTa, delta = NULL, scale = 1, dtype = -1, dst = NULL)}
\arguments{
\item{src}{input single-channel matrix. Note that unlike gemm, the function can multiply not only floating-point matrices.}
\item{aTa}{Flag specifying the multiplication ordering. See the description below.}
\item{delta}{Optional delta matrix subtracted from src before the multiplication. When the matrix is empty ( delta=noArray ), it is assumed to be zero, that is, nothing is subtracted. If it has the same size as src, it is simply subtracted. Otherwise, it is "repeated" (see repeat ) to cover the full src and then subtracted. Type of the delta matrix, when it is not empty, must be the same as the type of created output matrix. See the dtype parameter description below.}
\item{scale}{Optional scale factor for the matrix product.}
\item{dtype}{Optional type of the output matrix. When it is negative, the output matrix will have the same type as src . Otherwise, it will be type=CV_MAT_DEPTH(dtype) that should be either CV_32F or CV_64F .}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the product of a matrix and its transposition.}
\details{
The function cv::mulTransposed calculates the product of src and its transposition:

if aTa=true, and

otherwise. The function is used to calculate the covariance matrix. With zero delta, it can be used as a faster substitute for general matrix product A*B when B=A'

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_calcCovarMatrix}}、\code{\link{cv_gemm}}、\code{\link{cv_repeat}}、\code{\link{cv_reduce}}}
\keyword{opencv}
