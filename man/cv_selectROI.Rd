% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_selectROI}
\alias{cv_selectROI}
\title{Allows users to select a ROI on the given image}
\usage{cv_selectROI(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{selected ROI or empty rect if selection canceled.}
\description{Allows users to select a ROI on the given image.}
\details{
The function creates a window and allows users to select a ROI using the mouse. Controls: use \code{space} or \code{enter} to finish selection, use key \code{c} to cancel selection (function will return the zero cv::Rect).

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Rect selectROI(const String& windowName, InputArray img, bool showCrosshair = true, bool fromCenter = false, bool printNotice = true)

Rect selectROI(InputArray img, bool showCrosshair = true, bool fromCenter = false, bool printNotice = true)

}

\strong{注意：}The function sets it's own mouse callback for specified window using cv::setMouseCallback(windowName, ...). After finish of work an empty callback will be set for the used window.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
