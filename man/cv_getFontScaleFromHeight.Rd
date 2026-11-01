% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getFontScaleFromHeight}
\alias{cv_getFontScaleFromHeight}
\title{Calculates the font-specific size to use to achieve a given height in pixels}
\usage{cv_getFontScaleFromHeight(fontFace, pixelHeight, thickness = 1)}
\arguments{
\item{fontFace}{Font to use, see cv::HersheyFonts.}
\item{pixelHeight}{Pixel height to compute the fontScale for}
\item{thickness}{Thickness of lines used to render the text.See putText for details.}
}
\value{The fontSize to use for cv::putText}
\description{Calculates the font-specific size to use to achieve a given height in pixels.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_putText}}}
\keyword{opencv}
