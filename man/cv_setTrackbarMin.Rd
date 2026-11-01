% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_setTrackbarMin}
\alias{cv_setTrackbarMin}
\title{Sets the trackbar minimum position}
\usage{cv_setTrackbarMin(trackbarname, winname, minval)}
\arguments{
\item{trackbarname}{Name of the trackbar.}
\item{winname}{Name of the window that is the parent of trackbar.}
\item{minval}{New minimum position.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Sets the trackbar minimum position.}
\details{
The function sets the minimum position of the specified trackbar in the specified window.

\strong{注意：}[Qt Backend Only] winname can be empty if the trackbar is attached to the control panel.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
