% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_pyrDown}
\alias{cv_pyrDown}
\title{Blurs an image and downsamples it}
\usage{cv_pyrDown(src, dstsize = NULL, borderType = BORDER_DEFAULT, dst = NULL)}
\arguments{
\item{src}{input image.}
\item{dstsize}{size of the output image.}
\item{borderType}{Pixel extrapolation method, see BorderTypes (BORDER_CONSTANT isn't supported)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Blurs an image and downsamples it.}
\details{
By default, size of the output image is computed as \code{Size((src.cols+1)/2, (src.rows+1)/2)}, but in any case, the following conditions should be satisfied:

The function performs the downsampling step of the Gaussian pyramid construction. First, it convolves the source image with the kernel:

Then, it downsamples the image by rejecting even rows and columns.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
