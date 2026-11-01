% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_GaussianBlur}
\alias{cv_GaussianBlur}
\title{Blurs an image using a Gaussian filter}
\usage{cv_GaussianBlur(src, ksize, sigmaX, sigmaY = 0, borderType = BORDER_DEFAULT,
    hint = ALGO_HINT_DEFAULT, dst = NULL)}
\arguments{
\item{src}{input image; the image can have any number of channels, which are processed independently, but the depth should be CV_8U, CV_16U, CV_16S, CV_32F or CV_64F.}
\item{ksize}{Gaussian kernel size. ksize.width and ksize.height can differ but they both must be positive and odd. Or, they can be zero's and then they are computed from sigma.}
\item{sigmaX}{Gaussian kernel standard deviation in X direction.}
\item{sigmaY}{Gaussian kernel standard deviation in Y direction; if sigmaY is zero, it is set to be equal to sigmaX, if both sigmas are zeros, they are computed from ksize.width and ksize.height, respectively (see getGaussianKernel for details); to fully control the result regardless of possible future modifications of all this semantics, it is recommended to specify all of ksize, sigmaX, and sigmaY.}
\item{borderType}{pixel extrapolation method, see BorderTypes. BORDER_WRAP is not supported.}
\item{hint}{Implementation modfication flags. See AlgorithmHint}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Blurs an image using a Gaussian filter.}
\details{
The function convolves the source image with the specified Gaussian kernel. In-place filtering is supported.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_sepFilter2D}}、\code{\link{cv_filter2D}}、\code{\link{cv_blur}}、\code{\link{cv_boxFilter}}、\code{\link{cv_bilateralFilter}}、\code{\link{cv_medianBlur}}}
\keyword{opencv}
