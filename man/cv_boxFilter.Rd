% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_boxFilter}
\alias{cv_boxFilter}
\title{Blurs an image using the box filter}
\usage{cv_boxFilter(src, ddepth, ksize, anchor = c(-1, -1), normalize = TRUE,
    borderType = BORDER_DEFAULT, dst = NULL)}
\arguments{
\item{src}{input image.}
\item{ddepth}{the output image depth (-1 to use src.depth ).}
\item{ksize}{blurring kernel size.}
\item{anchor}{anchor point; default value Point(-1,-1) means that the anchor is at the kernel center.}
\item{normalize}{flag, specifying whether the kernel is normalized by its area or not.}
\item{borderType}{border mode used to extrapolate pixels outside of the image, see BorderTypes. BORDER_WRAP is not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Blurs an image using the box filter.}
\details{
The function smooths an image using the kernel:

where

Unnormalized box filter is useful for computing various integral characteristics over each pixel neighborhood, such as covariance matrices of image derivatives (used in dense optical flow algorithms, and so on). If you need to compute pixel sums over variable-size windows, use integral.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_blur}}、\code{\link{cv_bilateralFilter}}、\code{\link{cv_GaussianBlur}}、\code{\link{cv_medianBlur}}、\code{\link{cv_integral}}}
\keyword{opencv}
