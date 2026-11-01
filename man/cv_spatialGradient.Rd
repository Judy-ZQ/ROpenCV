% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_spatialGradient}
\alias{cv_spatialGradient}
\title{Calculates the first order image derivative in both x and y using a Sobel operator}
\usage{cv_spatialGradient(src, ksize = 3, borderType = BORDER_DEFAULT, dx = NULL,
    dy = NULL)}
\arguments{
\item{src}{input image.}
\item{ksize}{size of Sobel kernel. It must be 3.}
\item{borderType}{pixel extrapolation method, see BorderTypes. Only BORDER_DEFAULT=BORDER_REFLECT_101 and BORDER_REPLICATE are supported.}
\item{dx}{output image with first-order derivative in x.}
\item{dy}{output image with first-order derivative in y.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the first order image derivative in both x and y using a Sobel operator.}
\details{
Equivalent to calling:

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_Sobel}}}
\keyword{opencv}
