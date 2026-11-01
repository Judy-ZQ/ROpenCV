% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_matchTemplate}
\alias{cv_matchTemplate}
\title{Compares a template against overlapped image regions}
\usage{cv_matchTemplate(image, templ, method, mask = NULL, dst = NULL)}
\arguments{
\item{image}{Image where the search is running. It must be 8-bit or 32-bit floating-point.}
\item{templ}{Searched template. It must be not greater than the source image and have the same data type.}
\item{method}{Parameter specifying the comparison method, see TemplateMatchModes}
\item{mask}{Optional mask. It must have the same size as templ. It must either have the same number of channels as template or only one channel, which is then used for all template and image channels. If the data type is CV_8U, the mask is interpreted as a binary mask, meaning only elements where mask is nonzero are used and are kept unchanged independent of the actual mask value (weight equals 1). For data tpye CV_32F, the mask values are used as weights. The exact formulas are documented in TemplateMatchModes.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Compares a template against overlapped image regions.}
\details{
The function slides through image , compares the overlapped patches of size against templ using the specified method and stores the comparison results in result . TemplateMatchModes describes the formulae for the available comparison methods ( denotes image, template, result, the optional mask ). The summation is done over template and/or the image patch:

After the function finishes the comparison, the best matches can be found as global minimums (when TM_SQDIFF was used) or maximums (when TM_CCORR or TM_CCOEFF was used) using the minMaxLoc function. In case of a color image, template summation in the numerator and each sum in the denominator is done over all of the channels and separate mean values are used for each channel. That is, the function can take a color template and a color image. The result will still be a single-channel image, which is easier to analyze.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
