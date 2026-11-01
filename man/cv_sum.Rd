% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_sum}
\alias{cv_sum}
\title{Calculates the sum of array elements}
\usage{cv_sum(src)}
\arguments{
\item{src}{input array that must have from 1 to 4 channels.}
}
\value{长度为 4 的数值向量 \code{c(b, g, r, a)}。}
\description{Calculates the sum of array elements.}
\details{
The function cv::sum calculates and returns the sum of array elements, independently for each channel.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_countNonZero}}、\code{\link{cv_mean}}、\code{\link{cv_meanStdDev}}、\code{\link{cv_norm}}、\code{\link{cv_minMaxLoc}}、\code{\link{cv_reduce}}}
\keyword{opencv}
