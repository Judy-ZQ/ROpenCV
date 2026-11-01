% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_randu}
\alias{cv_randu}
\title{Generates a single uniformly-distributed random number or an array of random numbers}
\usage{cv_randu(dst = NULL, low, high)}
\arguments{
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{low}{inclusive lower boundary of the generated random numbers.}
\item{high}{exclusive upper boundary of the generated random numbers.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Generates a single uniformly-distributed random number or an array of random numbers.}
\details{
Non-template variant of the function fills the matrix dst with uniformly-distributed random numbers from the specified range:

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_randn}}}
\keyword{opencv}
