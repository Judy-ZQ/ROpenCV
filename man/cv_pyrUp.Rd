% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_pyrUp}
\alias{cv_pyrUp}
\title{Upsamples an image and then blurs it}
\usage{cv_pyrUp(src, dstsize = NULL, borderType = BORDER_DEFAULT, dst = NULL)}
\arguments{
\item{src}{input image.}
\item{dstsize}{size of the output image.}
\item{borderType}{Pixel extrapolation method, see BorderTypes (only BORDER_DEFAULT is supported)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Upsamples an image and then blurs it.}
\details{
By default, size of the output image is computed as \code{Size(src.cols\\*2, (src.rows\\*2)}, but in any case, the following conditions should be satisfied:

The function performs the upsampling step of the Gaussian pyramid construction, though it can actually be used to construct the Laplacian pyramid. First, it upsamples the source image by injecting even zero rows and columns and then convolves the result with the same kernel as in pyrDown multiplied by 4.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
