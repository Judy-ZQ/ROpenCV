% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_haveImageWriter}
\alias{cv_haveImageWriter}
\title{Checks if the specified image file or specified file extension can be encoded by OpenCV}
\usage{cv_haveImageWriter(filename)}
\arguments{
\item{filename}{The name of the file or the file extension (e.g., ".jpg", ".png"). It is recommended to provide the file extension rather than the full file name.}
}
\value{true if an image writer for the specified extension is available, false otherwise.}
\description{Checks if the specified image file or specified file extension can be encoded by OpenCV.}
\details{
The function haveImageWriter checks if OpenCV is capable of writing images with the specified file extension. This can be useful for verifying support for a given image format before attempting to save an image.

\strong{注意：}The function checks the availability of image codecs that are either built into OpenCV or dynamically loaded. It does not check for the actual existence of the file but rather the ability to write files of the given type.

\strong{C++ 头文件：}\code{#include <opencv2/imgcodecs.hpp>}
}
\seealso{\code{\link{cv_haveImageReader}}、\code{\link{cv_imwrite}}、\code{\link{cv_imencode}}}
\keyword{opencv}
