% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getGaborKernel}
\alias{cv_getGaborKernel}
\title{Returns Gabor filter coefficients}
\usage{cv_getGaborKernel(ksize, sigma, theta, lambd, gamma, psi, ktype = CV_64F)}
\arguments{
\item{ksize}{Size of the filter returned.}
\item{sigma}{Standard deviation of the gaussian envelope.}
\item{theta}{Orientation of the normal to the parallel stripes of a Gabor function.}
\item{lambd}{Wavelength of the sinusoidal factor.}
\item{gamma}{Spatial aspect ratio.}
\item{psi}{Phase offset.}
\item{ktype}{Type of filter coefficients. It can be CV_32F or CV_64F .}
}
\value{\code{cvMat} 图像。}
\description{Returns Gabor filter coefficients.}
\details{
For more details about gabor filter equations and parameters, see: Gabor Filter.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
