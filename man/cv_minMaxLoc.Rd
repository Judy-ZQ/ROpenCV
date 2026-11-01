% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_minMaxLoc}
\alias{cv_minMaxLoc}
\title{Finds the global minimum and maximum in an array}
\usage{cv_minMaxLoc(src, mask = NULL)}
\arguments{
\item{src}{input single-channel array.}
\item{mask}{optional mask used to select a sub-array of type CV_8U, CV_8S or CV_Bool.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Finds the global minimum and maximum in an array.}
\details{
The function cv::minMaxLoc finds the minimum and maximum element values and their positions. The extremums are searched across the whole array or, if mask is not an empty array, in the specified array region.

The function do not work with multi-channel arrays. If you need to find minimum or maximum elements across all the channels, use Mat::reshape first to reinterpret the array as single-channel. Or you may extract the particular channel using either extractImageCOI, or mixChannels, or split.

\strong{注意：}CV_16F/CV_16BF/CV_Bool/CV_64U/CV_64S/CV_32U are not supported for src.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_max}}、\code{\link{cv_min}}、\code{\link{cv_reduceArgMin}}、\code{\link{cv_reduceArgMax}}、\code{\link{cv_compare}}、\code{\link{cv_inRange}}、\code{\link{cv_mixChannels}}、\code{\link{cv_split}}}
\keyword{opencv}
