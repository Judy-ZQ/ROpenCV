% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_selectROIs}
\alias{cv_selectROIs}
\title{Allows users to select multiple ROIs on the given image}
\usage{cv_selectROIs(windowName, img, showCrosshair = TRUE, fromCenter = FALSE,
    printNotice = TRUE)}
\arguments{
\item{windowName}{name of the window where selection process will be shown.}
\item{img}{image to select a ROI.}
\item{showCrosshair}{if true crosshair of selection rectangle will be shown.}
\item{fromCenter}{if true center of selection will match initial mouse position. In opposite case a corner of selection rectangle will correspont to the initial mouse position.}
\item{printNotice}{if true a notice to select ROI or cancel selection will be printed in console.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Allows users to select multiple ROIs on the given image.}
\details{
The function creates a window and allows users to select multiple ROIs using the mouse. Controls: use \code{space} or \code{enter} to finish current selection and start a new one, use \code{esc} to terminate multiple ROI selection process.

\strong{注意：}The function sets it's own mouse callback for specified window using cv::setMouseCallback(windowName, ...). After finish of work an empty callback will be set for the used window.

\strong{C++ 头文件：}\code{#include <opencv2/highgui.hpp>}
}
\keyword{opencv}
