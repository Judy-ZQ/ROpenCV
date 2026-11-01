% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_Sobel}
\alias{cv_Sobel}
\title{Calculates the first, second, third, or mixed image derivatives using an extended Sobel operator}
\usage{cv_Sobel(src, ddepth, dx, dy, ksize = 3, scale = 1, delta = 0,
    borderType = BORDER_DEFAULT, dst = NULL)}
\arguments{
\item{src}{input image.}
\item{ddepth}{output image depth, see combinations; in the case of 8-bit input images it will result in truncated derivatives.}
\item{dx}{order of the derivative x.}
\item{dy}{order of the derivative y.}
\item{ksize}{size of the extended Sobel kernel; it must be 1, 3, 5, or 7.}
\item{scale}{optional scale factor for the computed derivative values; by default, no scaling is applied (see getDerivKernels for details).}
\item{delta}{optional delta value that is added to the results prior to storing them in dst.}
\item{borderType}{pixel extrapolation method, see BorderTypes. BORDER_WRAP is not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the first, second, third, or mixed image derivatives using an extended Sobel operator.}
\details{
In all cases except one, the separable kernel is used to calculate the derivative. When , the or kernel is used (that is, no Gaussian smoothing is done). \code{ksize = 1} can only be used for the first or the second x- or y- derivatives.

There is also the special value \code{ksize = #FILTER_SCHARR (-1)} that corresponds to the Scharr filter that may give more accurate results than the Sobel. The Scharr aperture is

for the x-derivative, or transposed for the y-derivative.

The function calculates an image derivative by convolving the image with the appropriate kernel:

The Sobel operators combine Gaussian smoothing and differentiation, so the result is more or less resistant to the noise. Most often, the function is called with ( xorder = 1, yorder = 0, ksize = 3) or ( xorder = 0, yorder = 1, ksize = 3) to calculate the first x- or y- image derivative. The first case corresponds to a kernel of:

The second case corresponds to a kernel of:

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_Scharr}}、\code{\link{cv_Laplacian}}、\code{\link{cv_sepFilter2D}}、\code{\link{cv_filter2D}}、\code{\link{cv_GaussianBlur}}、\code{\link{cv_cartToPolar}}}
\keyword{opencv}
