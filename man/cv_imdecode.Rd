% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_imdecode}
\alias{cv_imdecode}
\title{Reads an image from a buffer in memory}
\usage{cv_imdecode(buf, flags)}
\arguments{
\item{buf}{Input array or vector of bytes.}
\item{flags}{The same flags as in cv::imread, see cv::ImreadModes.}
}
\value{\code{cvMat} 图像。}
\description{Reads an image from a buffer in memory.}
\details{
The function imdecode reads an image from the specified buffer in the memory. If the buffer is too short or contains invalid data, the function returns an empty matrix ( Mat::data==NULL ).

See cv::imread for the list of supported formats and flags description.

\strong{注意：}In the case of color images, the decoded images will have the channels stored in B G R order.

\strong{C++ 头文件：}\code{#include <opencv2/imgcodecs.hpp>}
}
\keyword{opencv}
