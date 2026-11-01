% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_imdecodemulti}
\alias{cv_imdecodemulti}
\title{Reads a multi-page image from a buffer in memory}
\usage{cv_imdecodemulti(buf, flags, range = NULL)}
\arguments{
\item{buf}{Input array or vector of bytes.}
\item{flags}{The same flags as in cv::imread, see cv::ImreadModes.}
\item{range}{A continuous selection of pages.}
}
\value{逻辑标量。}
\description{Reads a multi-page image from a buffer in memory.}
\details{
The function imdecodemulti reads a multi-page image from the specified buffer in the memory. If the buffer is too short or contains invalid data, the function returns false.

See cv::imreadmulti for the list of supported formats and flags description.

\strong{注意：}In the case of color images, the decoded images will have the channels stored in B G R order.

\strong{C++ 头文件：}\code{#include <opencv2/imgcodecs.hpp>}
}
\keyword{opencv}
