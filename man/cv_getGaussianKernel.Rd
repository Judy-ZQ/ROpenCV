% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getGaussianKernel}
\alias{cv_getGaussianKernel}
\title{Returns Gaussian filter coefficients}
\usage{cv_getGaussianKernel(ksize, sigma, ktype = CV_64F)}
\arguments{
\item{ksize}{Aperture size. It should be odd and positive.}
\item{sigma}{Gaussian standard deviation. If it is non-positive, it is computed from ksize as \code{sigma = 0.3*((ksize-1)*0.5 - 1) + 0.8}.}
\item{ktype}{Type of filter coefficients. It can be CV_32F or CV_64F .}
}
\value{\code{cvMat} 图像。}
\description{Returns Gaussian filter coefficients.}
\details{
The function computes and returns the matrix of Gaussian filter coefficients:

where and is the scale factor chosen so that .

Two of such generated kernels can be passed to sepFilter2D. Those functions automatically recognize smoothing kernels (a symmetrical kernel with sum of weights equal to 1) and handle them accordingly. You may also use the higher-level GaussianBlur.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_sepFilter2D}}、\code{\link{cv_getDerivKernels}}、\code{\link{cv_getStructuringElement}}、\code{\link{cv_GaussianBlur}}}
\keyword{opencv}
