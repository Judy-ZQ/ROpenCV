% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_morphologyEx}
\alias{cv_morphologyEx}
\title{Performs advanced morphological transformations}
\usage{cv_morphologyEx(src, op, kernel, anchor = c(-1, -1), iterations = 1,
    borderType = BORDER_CONSTANT, borderValue = c(Inf, Inf, Inf, Inf),
    dst = NULL)}
\arguments{
\item{src}{Source image. The number of channels can be arbitrary. The depth should be one of CV_8U, CV_16U, CV_16S, CV_32F or CV_64F.}
\item{op}{Type of a morphological operation, see MorphTypes}
\item{kernel}{Structuring element. It can be created using getStructuringElement.}
\item{anchor}{Anchor position with the kernel. Negative values mean that the anchor is at the kernel center.}
\item{iterations}{Number of times erosion and dilation are applied.}
\item{borderType}{Pixel extrapolation method, see BorderTypes. BORDER_WRAP is not supported.}
\item{borderValue}{Border value in case of a constant border. The default value has a special meaning.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs advanced morphological transformations.}
\details{
The function cv::morphologyEx can perform advanced morphological transformations using an erosion and dilation as basic operations.

Any of the operations can be done in-place. In case of multi-channel images, each channel is processed independently.

\strong{注意：}The number of iterations is the number of times erosion or dilatation operation will be applied. For instance, an opening operation (MORPH_OPEN) with two iterations is equivalent to apply successively: erode -> erode -> dilate -> dilate (and not erode -> dilate -> erode -> dilate).

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_dilate}}、\code{\link{cv_erode}}、\code{\link{cv_getStructuringElement}}}
\keyword{opencv}
