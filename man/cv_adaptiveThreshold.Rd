% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_adaptiveThreshold}
\alias{cv_adaptiveThreshold}
\title{Applies an adaptive threshold to an array}
\usage{cv_adaptiveThreshold(src, maxValue, adaptiveMethod, thresholdType, blockSize,
    C, dst = NULL)}
\arguments{
\item{src}{Source 8-bit single-channel image.}
\item{maxValue}{Non-zero value assigned to the pixels for which the condition is satisfied}
\item{adaptiveMethod}{Adaptive thresholding algorithm to use, see AdaptiveThresholdTypes. The BORDER_REPLICATE | BORDER_ISOLATED is used to process boundaries.}
\item{thresholdType}{Thresholding type that must be either THRESH_BINARY or THRESH_BINARY_INV, see ThresholdTypes.}
\item{blockSize}{Size of a pixel neighborhood that is used to calculate a threshold value for the pixel: 3, 5, 7, and so on.}
\item{C}{Constant subtracted from the mean or weighted mean (see the details below). Normally, it is positive but may be zero or negative as well.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies an adaptive threshold to an array.}
\details{
The function transforms a grayscale image to a binary image according to the formulae:

\itemize{
\item THRESH_BINARY
\item THRESH_BINARY_INV where is a threshold calculated individually for each pixel (see adaptiveMethod parameter).
}

The function can process the image in-place.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_threshold}}、\code{\link{cv_blur}}、\code{\link{cv_GaussianBlur}}}
\keyword{opencv}
