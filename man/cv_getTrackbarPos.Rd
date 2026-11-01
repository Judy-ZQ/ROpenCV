% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getTrackbarPos}
\alias{cv_getTrackbarPos}
\title{Returns the trackbar position}
\usage{cv_getTrackbarPos(trackbarname, winname)}
\arguments{
\item{trackbarname}{Name of the trackbar.}
\item{winname}{Name of the window that is the parent of the trackbar.}
}
\value{整数标量。}
\description{Returns the trackbar position.}
\details{
The function returns the current position of the specified trackbar.

\strong{注意：}[Qt Backend Only] winname can be empty if the trackbar is attached to the control panel.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
