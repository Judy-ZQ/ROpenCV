% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_setWindowProperty}
\alias{cv_setWindowProperty}
\title{Changes parameters of a window dynamically}
\usage{cv_setWindowProperty(winname, prop_id, prop_value)}
\arguments{
\item{winname}{Name of the window.}
\item{prop_id}{Window property to edit. The supported operation flags are: (cv::WindowPropertyFlags)}
\item{prop_value}{New value of the window property. The supported flags are: (cv::WindowFlags)}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Changes parameters of a window dynamically.}
\details{
The function setWindowProperty enables changing properties of a window.

\strong{注意：}[Wayland Backend Only] This function is not supported.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
