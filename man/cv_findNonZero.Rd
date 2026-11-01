% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findNonZero}
\alias{cv_findNonZero}
\title{Returns the list of locations of non-zero pixels}
\usage{cv_findNonZero(src, dst = NULL)}
\arguments{
\item{src}{single-channel array}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Returns the list of locations of non-zero pixels.}
\details{
Given a binary matrix (likely returned from an operation such as threshold , compare , >, ==, etc, return all of the non-zero indices as a cv::Mat or std::vector<cv::Point> (x,y) For example:

or

The function do not work with multi-channel arrays. If you need to find non-zero elements across all the channels, use Mat::reshape first to reinterpret the array as single-channel. Or you may extract the particular channel using either extractImageCOI, or mixChannels, or split.

\strong{注意：}CV_16F/CV_16BF/CV_Bool/CV_64U/CV_64S/CV_32U are not supported for src. If only count of non-zero array elements is important, countNonZero is helpful. If only whether there are non-zero elements is important, hasNonZero is helpful.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_countNonZero}}、\code{\link{cv_hasNonZero}}}
\keyword{opencv}
