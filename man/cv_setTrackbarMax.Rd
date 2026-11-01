% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_setTrackbarMax}
\alias{cv_setTrackbarMax}
\title{Sets the trackbar maximum position}
\usage{cv_setTrackbarMax(trackbarname, winname, maxval)}
\arguments{
\item{trackbarname}{Name of the trackbar.}
\item{winname}{Name of the window that is the parent of trackbar.}
\item{maxval}{New maximum position.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Sets the trackbar maximum position.}
\details{
The function sets the maximum position of the specified trackbar in the specified window.

\strong{注意：}[Qt Backend Only] winname can be empty if the trackbar is attached to the control panel.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
