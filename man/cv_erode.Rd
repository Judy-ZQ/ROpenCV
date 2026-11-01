% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_erode}
\alias{cv_erode}
\title{Erodes an image by using a specific structuring element}
\usage{cv_erode(src, kernel, anchor = c(-1, -1), iterations = 1,
    borderType = BORDER_CONSTANT, borderValue = c(Inf, Inf, Inf, Inf),
    dst = NULL)}
\arguments{
\item{src}{input image; the number of channels can be arbitrary, but the depth should be one of CV_8U, CV_16U, CV_16S, CV_32F or CV_64F.}
\item{kernel}{structuring element used for erosion; if \code{element=Mat }, a \code{3 x 3} rectangular structuring element is used. Kernel can be created using getStructuringElement.}
\item{anchor}{position of the anchor within the element; default value (-1, -1) means that the anchor is at the element center.}
\item{iterations}{number of times erosion is applied.}
\item{borderType}{pixel extrapolation method, see BorderTypes. BORDER_WRAP is not supported.}
\item{borderValue}{border value in case of a constant border}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Erodes an image by using a specific structuring element.}
\details{
The function erodes the source image using the specified structuring element that determines the shape of a pixel neighborhood over which the minimum is taken:

The function supports the in-place mode. Erosion can be applied several ( iterations ) times. In case of multi-channel images, each channel is processed independently.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_dilate}}、\code{\link{cv_morphologyEx}}、\code{\link{cv_getStructuringElement}}}
\keyword{opencv}
