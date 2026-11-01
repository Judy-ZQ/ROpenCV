% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_sqrBoxFilter}
\alias{cv_sqrBoxFilter}
\title{Calculates the normalized sum of squares of the pixel values overlapping the filter}
\usage{cv_sqrBoxFilter(src, ddepth, ksize, anchor = c(-1, -1), normalize = TRUE,
    borderType = BORDER_DEFAULT, dst = NULL)}
\arguments{
\item{src}{input image}
\item{ddepth}{the output image depth (-1 to use src.depth )}
\item{ksize}{kernel size}
\item{anchor}{kernel anchor point. The default value of Point(-1, -1) denotes that the anchor is at the kernel center.}
\item{normalize}{flag, specifying whether the kernel is to be normalized by it's area or not.}
\item{borderType}{border mode used to extrapolate pixels outside of the image, see BorderTypes. BORDER_WRAP is not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the normalized sum of squares of the pixel values overlapping the filter.}
\details{
For every pixel in the source image, the function calculates the sum of squares of those neighboring pixel values which overlap the filter placed over the pixel .

The unnormalized square box filter can be useful in computing local image statistics such as the local variance and standard deviation around the neighborhood of a pixel.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_boxFilter}}}
\keyword{opencv}
