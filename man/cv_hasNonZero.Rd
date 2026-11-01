% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_hasNonZero}
\alias{cv_hasNonZero}
\title{Checks for the presence of at least one non-zero array element}
\usage{cv_hasNonZero(src)}
\arguments{
\item{src}{single-channel array.}
}
\value{逻辑标量。}
\description{Checks for the presence of at least one non-zero array element.}
\details{
The function returns whether there are non-zero elements in src

The function do not work with multi-channel arrays. If you need to check non-zero array elements across all the channels, use Mat::reshape first to reinterpret the array as single-channel. Or you may extract the particular channel using either extractImageCOI, or mixChannels, or split.

\strong{注意：}CV_16F/CV_16BF/CV_Bool/CV_64U/CV_64S/CV_32U are not supported for src. If the location of non-zero array elements is important, findNonZero is helpful. If the count of non-zero array elements is important, countNonZero is helpful.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_mean}}、\code{\link{cv_meanStdDev}}、\code{\link{cv_norm}}、\code{\link{cv_minMaxLoc}}、\code{\link{cv_calcCovarMatrix}}、\code{\link{cv_findNonZero}}、\code{\link{cv_countNonZero}}}
\keyword{opencv}
