% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_medianBlur}
\alias{cv_medianBlur}
\title{Blurs an image using the median filter}
\usage{cv_medianBlur(src, ksize, dst = NULL)}
\arguments{
\item{src}{input 1-, 3-, or 4-channel image; when ksize is 3 or 5, the image depth should be CV_8U, CV_16U, or CV_32F, for larger aperture sizes, it can only be CV_8U.}
\item{ksize}{aperture linear size; it must be odd and greater than 1, for example: 3, 5, 7 ...}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Blurs an image using the median filter.}
\details{
The function smoothes an image using the median filter with the aperture. Each channel of a multi-channel image is processed independently. In-place operation is supported.

\strong{注意：}The median filter uses BORDER_REPLICATE internally to cope with border pixels, see BorderTypes

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_bilateralFilter}}、\code{\link{cv_blur}}、\code{\link{cv_boxFilter}}、\code{\link{cv_GaussianBlur}}}
\keyword{opencv}
