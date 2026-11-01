% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fastNlMeansDenoisingColored}
\alias{cv_fastNlMeansDenoisingColored}
\title{Modification of fastNlMeansDenoising function for colored images}
\usage{cv_fastNlMeansDenoisingColored(src, h = 3, hColor = 3,
    templateWindowSize = 7, searchWindowSize = 21, dst = NULL)}
\arguments{
\item{src}{Input 8-bit 3-channel image.}
\item{h}{Parameter regulating filter strength for luminance component. Bigger h value perfectly removes noise but also removes image details, smaller h value preserves details but also preserves some noise}
\item{hColor}{The same as h but for color components. For most images value equals 10 will be enough to remove colored noise and do not distort colors}
\item{templateWindowSize}{Size in pixels of the template patch that is used to compute weights. Should be odd. Recommended value 7 pixels}
\item{searchWindowSize}{Size in pixels of the window that is used to compute weighted average for given pixel. Should be odd. Affect performance linearly: greater searchWindowsSize - greater denoising time. Recommended value 21 pixels}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Modification of fastNlMeansDenoising function for colored images.}
\details{
The function converts image to CIELAB colorspace and then separately denoise L and AB components with given h parameters using fastNlMeansDenoising function.

\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
