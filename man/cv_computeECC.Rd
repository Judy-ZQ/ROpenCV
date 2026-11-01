% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_computeECC}
\alias{cv_computeECC}
\title{Computes the Enhanced Correlation Coefficient value between two images [80] }
\usage{cv_computeECC(templateImage, inputImage, inputMask = NULL)}
\arguments{
\item{templateImage}{single-channel template image; CV_8U or CV_32F array.}
\item{inputImage}{single-channel input image to be warped to provide an image similar to templateImage, same type as templateImage.}
\item{inputMask}{An optional mask to indicate valid values of inputImage.}
}
\value{数值标量。}
\description{Computes the Enhanced Correlation Coefficient value between two images [80] .}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
}
\seealso{\code{\link{cv_findTransformECC}}}
\keyword{opencv}
