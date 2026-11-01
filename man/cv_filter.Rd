% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_filter}
\alias{cv_filter}
\title{Image filtering}
\usage{cv_filter(image, kernel, dst = NULL)}
\arguments{
\item{image}{Input image.}
\item{kernel}{Final 32-bit kernel.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Image filtering.}
\details{
Filtering of the input image by means of F-transform.

\strong{C++ 头文件：}\code{#include <opencv2/fuzzy/fuzzy_image.hpp>}
}
\keyword{opencv}
