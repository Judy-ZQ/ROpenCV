% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_countNonZero}
\alias{cv_countNonZero}
\title{Counts non-zero array elements}
\usage{cv_countNonZero(src)}
\arguments{
\item{src}{single-channel array.}
}
\value{整数标量。}
\description{Counts non-zero array elements.}
\details{
The function returns the number of non-zero elements in src :

The function do not work with multi-channel arrays. If you need to count non-zero array elements across all the channels, use Mat::reshape first to reinterpret the array as single-channel. Or you may extract the particular channel using either extractImageCOI, or mixChannels, or split.

\strong{注意：}CV_16F/CV_16BF/CV_Bool/CV_64U/CV_64S/CV_32U are not supported for src. If only whether there are non-zero elements is important, hasNonZero is helpful. If the location of non-zero array elements is important, findNonZero is helpful.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_mean}}、\code{\link{cv_meanStdDev}}、\code{\link{cv_norm}}、\code{\link{cv_minMaxLoc}}、\code{\link{cv_calcCovarMatrix}}、\code{\link{cv_findNonZero}}、\code{\link{cv_hasNonZero}}}
\keyword{opencv}
