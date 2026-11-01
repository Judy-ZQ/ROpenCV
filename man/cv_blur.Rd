% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_blur}
\alias{cv_blur}
\title{Blurs an image using the normalized box filter}
\usage{cv_blur(src, ksize, anchor = c(-1, -1), borderType = BORDER_DEFAULT,
    dst = NULL)}
\arguments{
\item{src}{input image; it can have any number of channels, which are processed independently, but the depth should be CV_8U, CV_16U, CV_16S, CV_32F or CV_64F.}
\item{ksize}{blurring kernel size.}
\item{anchor}{anchor point; default value Point(-1,-1) means that the anchor is at the kernel center.}
\item{borderType}{border mode used to extrapolate pixels outside of the image, see BorderTypes. BORDER_WRAP is not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Blurs an image using the normalized box filter.}
\details{
The function smooths an image using the kernel:

The call \code{blur(src, dst, ksize, anchor, borderType)} is equivalent to \code{boxFilter(src, dst, src.type , ksize, anchor, true, borderType)}.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_boxFilter}}、\code{\link{cv_bilateralFilter}}、\code{\link{cv_GaussianBlur}}、\code{\link{cv_medianBlur}}}
\keyword{opencv}
