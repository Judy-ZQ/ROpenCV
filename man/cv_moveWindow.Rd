% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_moveWindow}
\alias{cv_moveWindow}
\title{Moves the window to the specified position}
\usage{cv_moveWindow(winname, x, y)}
\arguments{
\item{winname}{Name of the window.}
\item{x}{The new x-coordinate of the window.}
\item{y}{The new y-coordinate of the window.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Moves the window to the specified position.}
\details{
\strong{注意：}[Wayland Backend Only] This function is not supported by the Wayland protocol limitation.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
