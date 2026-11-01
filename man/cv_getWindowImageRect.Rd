% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getWindowImageRect}
\alias{cv_getWindowImageRect}
\title{Provides rectangle of image in the window}
\usage{cv_getWindowImageRect(winname)}
\arguments{
\item{winname}{Name of the window.}
}
\value{长度为 4 的整数向量 \code{c(x, y, width, height)}。}
\description{Provides rectangle of image in the window.}
\details{
The function getWindowImageRect returns the client screen coordinates, width and height of the image rendering area.

\strong{注意：}[Wayland Backend Only] This function is not supported by the Wayland protocol limitation.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\seealso{\code{\link{cv_resizeWindow}}、\code{\link{cv_moveWindow}}}
\keyword{opencv}
