% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getDerivKernels}
\alias{cv_getDerivKernels}
\title{Returns filter coefficients for computing spatial image derivatives}
\usage{cv_getDerivKernels(dx, dy, ksize, normalize = FALSE, ktype = CV_32F,
    kx = NULL, ky = NULL)}
\arguments{
\item{dx}{Derivative order in respect of x.}
\item{dy}{Derivative order in respect of y.}
\item{ksize}{Aperture size. It can be FILTER_SCHARR, 1, 3, 5, or 7.}
\item{normalize}{Flag indicating whether to normalize (scale down) the filter coefficients or not. Theoretically, the coefficients should have the denominator . If you are going to filter floating-point images, you are likely to use the normalized kernels. But if you compute derivatives of an 8-bit image, store the results in a 16-bit image, and wish to preserve all the fractional bits, you may want to set normalize=false .}
\item{ktype}{Type of filter coefficients. It can be CV_32f or CV_64F .}
\item{kx}{Output matrix of row filter coefficients. It has the type ktype .}
\item{ky}{Output matrix of column filter coefficients. It has the type ktype .}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Returns filter coefficients for computing spatial image derivatives.}
\details{
The function computes and returns the filter coefficients for spatial image derivatives. When \code{ksize=FILTER_SCHARR}, the Scharr kernels are generated (see Scharr). Otherwise, Sobel kernels are generated (see Sobel). The filters are normally passed to sepFilter2D or to

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
