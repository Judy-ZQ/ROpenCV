% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_buildPyramid}
\alias{cv_buildPyramid}
\title{Constructs the Gaussian pyramid for an image}
\usage{cv_buildPyramid(src, maxlevel, borderType = BORDER_DEFAULT, dst = NULL)}
\arguments{
\item{src}{Source image. Check pyrDown for the list of supported types.}
\item{maxlevel}{0-based index of the last (the smallest) pyramid layer. It must be non-negative.}
\item{borderType}{Pixel extrapolation method, see BorderTypes (BORDER_CONSTANT isn't supported)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Constructs the Gaussian pyramid for an image.}
\details{
The function constructs a vector of images and builds the Gaussian pyramid by recursively applying pyrDown to the previously built pyramid layers, starting from \code{dst[0]==src}.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
