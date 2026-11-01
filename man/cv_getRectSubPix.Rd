% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getRectSubPix}
\alias{cv_getRectSubPix}
\title{Retrieves a pixel rectangle from an image with sub-pixel accuracy}
\usage{cv_getRectSubPix(image, patchSize, center, patchType = -1, dst = NULL)}
\arguments{
\item{image}{Source image.}
\item{patchSize}{Size of the extracted patch.}
\item{center}{Floating point coordinates of the center of the extracted rectangle within the source image. The center must be inside the image.}
\item{patchType}{Depth of the extracted pixels. By default, they have the same depth as src .}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Retrieves a pixel rectangle from an image with sub-pixel accuracy.}
\details{
The function getRectSubPix extracts pixels from src:

where the values of the pixels at non-integer coordinates are retrieved using bilinear interpolation. Every channel of multi-channel images is processed independently. Also the image should be a single channel or three channel image. While the center of the rectangle must be inside the image, parts of the rectangle may be outside.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_warpAffine}}、\code{\link{cv_warpPerspective}}}
\keyword{opencv}
