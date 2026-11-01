% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_niBlackThreshold}
\alias{cv_niBlackThreshold}
\title{Performs thresholding on input images using Niblack's technique or some of the popular variations it inspired}
\usage{cv_niBlackThreshold(src, maxValue, type, blockSize, k,
    binarizationMethod = BINARIZATION_NIBLACK, r = 128, dst = NULL)}
\arguments{
\item{src}{含义见下方 C++ 签名。}
\item{maxValue}{Non-zero value assigned to the pixels for which the condition is satisfied, used with the THRESH_BINARY and THRESH_BINARY_INV thresholding types.}
\item{type}{Thresholding type, see cv::ThresholdTypes.}
\item{blockSize}{Size of a pixel neighborhood that is used to calculate a threshold value for the pixel: 3, 5, 7, and so on.}
\item{k}{The user-adjustable parameter used by Niblack and inspired techniques. For Niblack, this is normally a value between 0 and 1 that is multiplied with the standard deviation and subtracted from the mean.}
\item{binarizationMethod}{Binarization method to use. By default, Niblack's technique is used. Other techniques can be specified, see cv::ximgproc::LocalBinarizationMethods.}
\item{r}{The user-adjustable parameter used by Sauvola's technique. This is the dynamic range of standard deviation.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs thresholding on input images using Niblack's technique or some of the popular variations it inspired.}
\details{
The function transforms a grayscale image to a binary image according to the formulae:

\itemize{
\item THRESH_BINARY
\item THRESH_BINARY_INV where is a threshold calculated individually for each pixel.
}

The threshold value is determined based on the binarization method chosen. For classic Niblack, it is the mean minus times standard deviation of neighborhood of .

The function can't process the image in-place.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc.hpp>}
}
\seealso{\code{\link{cv_threshold}}、\code{\link{cv_adaptiveThreshold}}}
\keyword{opencv}
