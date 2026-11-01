% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_mean}
\alias{cv_mean}
\title{Calculates an average (mean) of array elements}
\usage{cv_mean(src, mask = NULL)}
\arguments{
\item{src}{input array that should have from 1 to 4 channels so that the result can be stored in Scalar_ .}
\item{mask}{optional operation mask ot type CV_8U, CV_8S or CV_Bool.}
}
\value{长度为 4 的数值向量 \code{c(b, g, r, a)}。}
\description{Calculates an average (mean) of array elements.}
\details{
The function cv::mean calculates the mean value M of array elements, independently for each channel, and return it:

When all the mask elements are 0's, the function returns Scalar::all(0)

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_countNonZero}}、\code{\link{cv_meanStdDev}}、\code{\link{cv_norm}}、\code{\link{cv_minMaxLoc}}}
\keyword{opencv}
