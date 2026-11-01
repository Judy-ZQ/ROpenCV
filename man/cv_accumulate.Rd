% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_accumulate}
\alias{cv_accumulate}
\title{Adds an image to the accumulator image}
\usage{cv_accumulate(src, dst = NULL, mask = NULL)}
\arguments{
\item{src}{Input image of type CV_8UC(n), CV_16UC(n), CV_32FC(n) or CV_64FC(n), where n is a positive integer.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{mask}{Optional operation mask.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Adds an image to the accumulator image.}
\details{
The function adds src or some of its elements to dst :

The function supports multi-channel images. Each channel is processed independently.

The function cv::accumulate can be used, for example, to collect statistics of a scene background viewed by a still camera and for the further foreground-background segmentation.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_accumulateSquare}}、\code{\link{cv_accumulateProduct}}、\code{\link{cv_accumulateWeighted}}}
\keyword{opencv}
