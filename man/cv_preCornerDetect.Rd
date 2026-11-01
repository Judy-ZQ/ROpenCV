% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_preCornerDetect}
\alias{cv_preCornerDetect}
\title{Calculates a feature map for corner detection}
\usage{cv_preCornerDetect(src, ksize, borderType = BORDER_DEFAULT, dst = NULL)}
\arguments{
\item{src}{Source single-channel 8-bit of floating-point image.}
\item{ksize}{Aperture size of the Sobel .}
\item{borderType}{Pixel extrapolation method. See BorderTypes. BORDER_WRAP is not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates a feature map for corner detection.}
\details{
The function calculates the complex spatial derivative-based function of the source image

where , are the first image derivatives, , are the second image derivatives, and is the mixed derivative.

The corners can be found as local maximums of the functions, as shown below:

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
