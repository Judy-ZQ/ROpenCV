% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvGrayCodePattern}
\alias{cvGrayCodePattern}
\title{Class implementing the Gray-code pattern, based on [124]}
\usage{cvGrayCodePattern(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvGrayCodePattern} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the Gray-code pattern, based on [124].}
\details{
The generation of the pattern images is performed with Gray encoding using the traditional white and black colors.
The information about the two image axes x, y is encoded separately into two different pattern sequences. A projector P with resolution (P_res_x, P_res_y) will result in Ncols = log 2 (P_res_x) encoded pattern images representing the columns, and in Nrows = log 2 (P_res_y) encoded pattern images representing the rows. For example a projector with resolution 1024x768 will result in Ncols = 10 and Nrows = 10.
However, the generated pattern sequence consists of both regular color and color-inverted images: inverted pattern images are images with the same structure as the original but with inverted colors. This provides an effective method for easily determining the intensity value of each pixel when it is lit (highest value) and when it is not lit (lowest value). So for a a projector with resolution 1024x768, the number of pattern images will be Ncols * 2 + Nrows * 2 = 40.
\strong{C++ 头文件：}\code{#include <opencv2/structured_light/graycodepattern.hpp>}
\strong{构造}
\preformatted{
cvGrayCodePattern(width, height)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvGrayCodePattern(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{decode(patternImages, blackImages = NULL, whiteImages = NULL, flags = DECODE_3D_UNDERWORLD, dst = NULL)}：Decodes the structured light pattern, generating a disparity map.
\item \code{generate(patternImages = NULL)}：Generates the structured light pattern to project.
\item \code{getImagesForShadowMasks(blackImage = NULL, whiteImage = NULL)}：Generates the all-black and all-white images needed for shadowMasks computation.
\item \code{getNumberOfPatternImages()}：Get the number of pattern images needed for the graycode pattern.
\item \code{getProjPixel(patternImages, x, y)}：For a (x,y) pixel of a camera returns the corresponding projector pixel.
\item \code{setBlackThreshold(value)}：Sets the value for black threshold, needed for decoding (shadowsmasks computation).
\item \code{setWhiteThreshold(value)}：Sets the value for white threshold, needed for decoding.
}
}
\seealso{父类 \code{\link{cvStructuredLightPattern}}（\code{cv::structured_light::StructuredLightPattern}）}
\keyword{opencv}
