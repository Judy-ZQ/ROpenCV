% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_accumulateProduct}
\alias{cv_accumulateProduct}
\title{Adds the per-element product of two input images to the accumulator image}
\usage{cv_accumulateProduct(src1, src2, dst = NULL, mask = NULL)}
\arguments{
\item{src1}{First input image, 1- or 3-channel, 8-bit or 32-bit floating point.}
\item{src2}{Second input image of the same type and the same size as src1 .}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{mask}{Optional operation mask.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Adds the per-element product of two input images to the accumulator image.}
\details{
The function adds the product of two images or their selected regions to the accumulator dst :

The function supports multi-channel images. Each channel is processed independently.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_accumulate}}、\code{\link{cv_accumulateSquare}}、\code{\link{cv_accumulateWeighted}}}
\keyword{opencv}
