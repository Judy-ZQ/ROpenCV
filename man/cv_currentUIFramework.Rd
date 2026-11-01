% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_currentUIFramework}
\alias{cv_currentUIFramework}
\title{HighGUI backend used}
\usage{cv_currentUIFramework()}
\value{\code{const std::string} 对应的 R 对象。}
\description{HighGUI backend used.}
\details{
The function returns HighGUI backend name used: could be COCOA, GTK2/3, QT, WAYLAND or WIN32. Returns empty string if there is no available UI backend.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
