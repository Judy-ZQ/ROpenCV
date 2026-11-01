% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_randn}
\alias{cv_randn}
\title{Fills the array with normally distributed random numbers}
\usage{cv_randn(dst = NULL, mean, stddev)}
\arguments{
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{mean}{mean value (expectation) of the generated random numbers.}
\item{stddev}{standard deviation of the generated random numbers; it can be either a vector (in which case a diagonal standard deviation matrix is assumed) or a square matrix.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Fills the array with normally distributed random numbers.}
\details{
The function cv::randn fills the matrix dst with normally distributed random numbers with the specified mean vector and the standard deviation matrix. The generated random numbers are clipped to fit the value range of the output array data type.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_randu}}}
\keyword{opencv}
