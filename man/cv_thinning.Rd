% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_thinning}
\alias{cv_thinning}
\title{Applies a binary blob thinning operation, to achieve a skeletization of the input image}
\usage{cv_thinning(src, thinningType = THINNING_ZHANGSUEN, dst = NULL)}
\arguments{
\item{src}{Source 8-bit single-channel image, containing binary blobs, with blobs having 255 pixel values.}
\item{thinningType}{Value that defines which thinning algorithm should be used. See cv::ximgproc::ThinningTypes}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies a binary blob thinning operation, to achieve a skeletization of the input image.}
\details{
The function transforms a binary blob image into a skeletized form using the technique of Zhang-Suen.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc.hpp>}
}
\keyword{opencv}
