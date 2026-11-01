% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_Laplacian}
\alias{cv_Laplacian}
\title{Calculates the Laplacian of an image}
\usage{cv_Laplacian(src, ddepth, ksize = 1, scale = 1, delta = 0,
    borderType = BORDER_DEFAULT, dst = NULL)}
\arguments{
\item{src}{Source image.}
\item{ddepth}{Desired depth of the destination image, see combinations.}
\item{ksize}{Aperture size used to compute the second-derivative filters. See getDerivKernels for details. The size must be positive and odd.}
\item{scale}{Optional scale factor for the computed Laplacian values. By default, no scaling is applied. See getDerivKernels for details.}
\item{delta}{Optional delta value that is added to the results prior to storing them in dst .}
\item{borderType}{Pixel extrapolation method, see BorderTypes. BORDER_WRAP is not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the Laplacian of an image.}
\details{
The function calculates the Laplacian of the source image by adding up the second x and y derivatives calculated using the Sobel operator:

This is done when \code{ksize > 1}. When \code{ksize == 1}, the Laplacian is computed by filtering the image with the following aperture:

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_Sobel}}、\code{\link{cv_Scharr}}}
\keyword{opencv}
