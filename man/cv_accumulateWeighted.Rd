% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_accumulateWeighted}
\alias{cv_accumulateWeighted}
\title{Updates a running average}
\usage{cv_accumulateWeighted(src, dst = NULL, alpha, mask = NULL)}
\arguments{
\item{src}{Input image as 1- or 3-channel, 8-bit or 32-bit floating point.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{alpha}{Weight of the input image.}
\item{mask}{Optional operation mask.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Updates a running average.}
\details{
The function calculates the weighted sum of the input image src and the accumulator dst so that dst becomes a running average of a frame sequence:

That is, alpha regulates the update speed (how fast the accumulator "forgets" about earlier images). The function supports multi-channel images. Each channel is processed independently.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_accumulate}}、\code{\link{cv_accumulateSquare}}、\code{\link{cv_accumulateProduct}}}
\keyword{opencv}
