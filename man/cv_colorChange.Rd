% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_colorChange}
\alias{cv_colorChange}
\title{Given an original color image, two differently colored versions of this image can be mixed seamlessly}
\usage{cv_colorChange(src, mask = NULL, red_mul = 1, green_mul = 1, blue_mul = 1,
    dst = NULL)}
\arguments{
\item{src}{Input 8-bit 3-channel image.}
\item{mask}{Input 8-bit 1 or 3-channel image.}
\item{red_mul}{R-channel multiply factor.}
\item{green_mul}{G-channel multiply factor.}
\item{blue_mul}{B-channel multiply factor.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Given an original color image, two differently colored versions of this image can be mixed seamlessly.}
\details{
Multiplication factor is between .5 to 2.5.

\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
