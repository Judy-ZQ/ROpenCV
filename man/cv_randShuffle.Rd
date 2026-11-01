% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_randShuffle}
\alias{cv_randShuffle}
\title{Shuffles the array elements randomly}
\usage{cv_randShuffle(dst = NULL, iterFactor = 1)}
\arguments{
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{iterFactor}{scale factor that determines the number of random swap operations (see the details below).}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Shuffles the array elements randomly.}
\details{
The function cv::randShuffle shuffles the specified 1D array by randomly choosing pairs of elements and swapping them. The number of such swap operations will be dst.rows*dst.cols*iterFactor .

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_sort}}}
\keyword{opencv}
