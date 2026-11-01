% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getWindowProperty}
\alias{cv_getWindowProperty}
\title{Provides parameters of a window}
\usage{cv_getWindowProperty(winname, prop_id)}
\arguments{
\item{winname}{Name of the window.}
\item{prop_id}{Window property to retrieve. The following operation flags are available: (cv::WindowPropertyFlags)}
}
\value{数值标量。}
\description{Provides parameters of a window.}
\details{
The function getWindowProperty returns properties of a window.

\strong{注意：}[Wayland Backend Only] This function is not supported.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\seealso{\code{\link{cv_setWindowProperty}}}
\keyword{opencv}
