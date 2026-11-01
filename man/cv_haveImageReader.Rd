% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_haveImageReader}
\alias{cv_haveImageReader}
\title{Checks if the specified image file can be decoded by OpenCV}
\usage{cv_haveImageReader(filename)}
\arguments{
\item{filename}{The name of the file to be checked.}
}
\value{true if an image reader for the specified file is available and the file can be opened, false otherwise.}
\description{Checks if the specified image file can be decoded by OpenCV.}
\details{
The function haveImageReader checks if OpenCV is capable of reading the specified file. This can be useful for verifying support for a given image format before attempting to load an image.

\strong{注意：}The function checks the availability of image codecs that are either built into OpenCV or dynamically loaded. It does not check for the actual existence of the file but rather the ability to read the specified file type. If the file cannot be opened or the format is unsupported, the function will return false.

\strong{C++ 头文件：}\code{#include <opencv2/imgcodecs.hpp>}
}
\seealso{\code{\link{cv_haveImageWriter}}、\code{\link{cv_imread}}、\code{\link{cv_imdecode}}}
\keyword{opencv}
