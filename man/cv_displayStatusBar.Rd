% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_displayStatusBar}
\alias{cv_displayStatusBar}
\title{Displays a text on the window statusbar during the specified period of time}
\usage{cv_displayStatusBar(winname, text, delayms = 0)}
\arguments{
\item{winname}{Name of the window.}
\item{text}{Text to write on the window statusbar.}
\item{delayms}{Duration (in milliseconds) to display the text. If this function is called before the previous text timed out, the timer is restarted and the text is updated. If this value is zero, the text never disappears.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Displays a text on the window statusbar during the specified period of time.}
\details{
The function displayStatusBar displays useful information/tips on top of the window for a certain amount of time delayms . This information is displayed on the window statusbar (the window must be created with the cv::WINDOW_GUI_EXPANDED flags).

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
