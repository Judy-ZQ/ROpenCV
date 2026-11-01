% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_displayOverlay}
\alias{cv_displayOverlay}
\title{Displays a text on a window image as an overlay for a specified duration}
\usage{cv_displayOverlay(winname, text, delayms = 0)}
\arguments{
\item{winname}{Name of the window.}
\item{text}{Overlay text to write on a window image.}
\item{delayms}{The period (in milliseconds), during which the overlay text is displayed. If this function is called before the previous overlay text timed out, the timer is restarted and the text is updated. If this value is zero, the text never disappears.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Displays a text on a window image as an overlay for a specified duration.}
\details{
The function displayOverlay displays useful information/tips on top of the window for a certain amount of time delayms. The function does not modify the image, displayed in the window, that is, after the specified delay the original content of the window is restored.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
