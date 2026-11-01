% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_textureFlattening}
\alias{cv_textureFlattening}
\title{By retaining only the gradients at edge locations, before integrating with the Poisson solver, one washes out the texture of the selected r}
\usage{cv_textureFlattening(src, mask = NULL, low_threshold = 30,
    high_threshold = 45, kernel_size = 3, dst = NULL)}
\arguments{
\item{src}{Input 8-bit 3-channel image.}
\item{mask}{Input 8-bit 1 or 3-channel image.}
\item{low_threshold}{Range from 0 to 100.}
\item{high_threshold}{Value > 100.}
\item{kernel_size}{The size of the Sobel kernel to be used.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{By retaining only the gradients at edge locations, before integrating with the Poisson solver, one washes out the texture of the selected region, giving its contents a flat aspect. Here Canny Edge Detector is used.}
\details{
\strong{注意：}The algorithm assumes that the color of the source image is close to that of the destination. This assumption means that when the colors don't match, the source image color gets tinted toward the color of the destination image.

\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
