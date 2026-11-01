% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_addText}
\alias{cv_addText}
\title{Draws a text on the image}
\usage{cv_addText(img, text, org, nameFont, pointSize = -1, color = 0,
    weight = QT_FONT_NORMAL, style = QT_STYLE_NORMAL, spacing = 0)}
\arguments{
\item{img}{8-bit 3-channel image where the text should be drawn.}
\item{text}{Text to write on an image.}
\item{org}{Point(x,y) where the text should start on an image.}
\item{nameFont}{Name of the font. The name should match the name of a system font (such as Times*). If the font is not found, a default one is used.}
\item{pointSize}{Size of the font. If not specified, equal zero or negative, the point size of the font is set to a system-dependent default value. Generally, this is 12 points.}
\item{color}{Color of the font in BGRA where A = 255 is fully transparent.}
\item{weight}{Font weight. Available operation flags are : cv::QtFontWeights You can also specify a positive integer for better control.}
\item{style}{Font style. Available operation flags are : cv::QtFontStyles}
\item{spacing}{Spacing between characters. It can be negative or positive.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Draws a text on the image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
