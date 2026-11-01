% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_imencode}
\alias{cv_imencode}
\title{Encodes an image into a memory buffer}
\usage{cv_imencode(ext, img, params = NULL)}
\arguments{
\item{ext}{File extension that defines the output format. Must include a leading period.}
\item{img}{Image to be written.}
\item{params}{Format-specific parameters. See cv::imwrite and cv::ImwriteFlags.}
}
\value{逻辑标量。}
\description{Encodes an image into a memory buffer.}
\details{
The function imencode compresses the image and stores it in the memory buffer that is resized to fit the result. See cv::imwrite for the list of supported formats and flags description.

\strong{C++ 头文件：}\code{#include <opencv2/imgcodecs.hpp>}
}
\keyword{opencv}
