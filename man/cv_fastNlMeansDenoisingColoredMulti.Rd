% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fastNlMeansDenoisingColoredMulti}
\alias{cv_fastNlMeansDenoisingColoredMulti}
\title{Modification of fastNlMeansDenoisingMulti function for colored images sequences}
\usage{cv_fastNlMeansDenoisingColoredMulti(srcImgs, imgToDenoiseIndex,
    temporalWindowSize, h = 3, hColor = 3, templateWindowSize = 7,
    searchWindowSize = 21, dst = NULL)}
\arguments{
\item{srcImgs}{Input 8-bit 3-channel images sequence. All images should have the same type and size.}
\item{imgToDenoiseIndex}{Target image to denoise index in srcImgs sequence}
\item{temporalWindowSize}{Number of surrounding images to use for target image denoising. Should be odd. Images from imgToDenoiseIndex - temporalWindowSize / 2 to imgToDenoiseIndex + temporalWindowSize / 2 from srcImgs will be used to denoise srcImgs[imgToDenoiseIndex] image.}
\item{h}{Parameter regulating filter strength for luminance component. Bigger h value perfectly removes noise but also removes image details, smaller h value preserves details but also preserves some noise.}
\item{hColor}{The same as h but for color components.}
\item{templateWindowSize}{Size in pixels of the template patch that is used to compute weights. Should be odd. Recommended value 7 pixels}
\item{searchWindowSize}{Size in pixels of the window that is used to compute weighted average for given pixel. Should be odd. Affect performance linearly: greater searchWindowsSize - greater denoising time. Recommended value 21 pixels}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Modification of fastNlMeansDenoisingMulti function for colored images sequences.}
\details{
The function converts images to CIELAB colorspace and then separately denoise L and AB components with given h parameters using fastNlMeansDenoisingMulti function.

\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
