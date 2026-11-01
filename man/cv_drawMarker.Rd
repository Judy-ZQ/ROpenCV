% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawMarker}
\alias{cv_drawMarker}
\title{Draws a marker on a predefined position in an image}
\usage{cv_drawMarker(img = NULL, position, color, markerType = MARKER_CROSS,
    markerSize = 20, thickness = 1, line_type = 8)}
\arguments{
\item{img}{Image.}
\item{position}{The point where the crosshair is positioned.}
\item{color}{Line color.}
\item{markerType}{The specific type of marker you want to use, see MarkerTypes}
\item{markerSize}{The length of the marker axis [default = 20 pixels]}
\item{thickness}{Line thickness.}
\item{line_type}{Type of the line, See LineTypes}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws a marker on a predefined position in an image.}
\details{
The function cv::drawMarker draws a marker on a given position in the image. For the moment several marker types are supported, see MarkerTypes for more information.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
