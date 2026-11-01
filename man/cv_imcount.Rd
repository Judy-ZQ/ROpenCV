% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_imcount}
\alias{cv_imcount}
\title{Returns the number of images inside the given file}
\usage{cv_imcount(filename, flags = IMREAD_ANYCOLOR)}
\arguments{
\item{filename}{Name of file to be loaded.}
\item{flags}{Flag that can take values of cv::ImreadModes, default with cv::IMREAD_ANYCOLOR.}
}
\value{整数标量。}
\description{Returns the number of images inside the given file.}
\details{
The function imcount returns the number of pages in a multi-page image (e.g. TIFF), the number of frames in an animation (e.g. AVIF), and 1 otherwise. If the image cannot be decoded, 0 is returned.

\strong{C++ 头文件：}\code{#include <opencv2/imgcodecs.hpp>}
}
\keyword{opencv}
