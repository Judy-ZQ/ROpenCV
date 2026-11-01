% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_resizeWindow}
\alias{cv_resizeWindow}
\title{Resizes the window to the specified size}
\usage{cv_resizeWindow(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Resizes the window to the specified size.}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void resizeWindow(const String& winname, int width, int height)

void resizeWindow(const String& winname, const cv::Size& size)

}

\strong{注意：}The specified window size is for the image area. Toolbars are not counted. Only windows created without cv::WINDOW_AUTOSIZE flag can be resized.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
