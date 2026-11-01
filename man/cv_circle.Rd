% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_circle}
\alias{cv_circle}
\title{Draws a circle}
\usage{cv_circle(img = NULL, center, radius, color, thickness = 1,
    lineType = LINE_8, shift = 0)}
\arguments{
\item{img}{Image where the circle is drawn.}
\item{center}{Center of the circle.}
\item{radius}{Radius of the circle.}
\item{color}{Circle color.}
\item{thickness}{Thickness of the circle outline, if positive. Negative values, like FILLED, mean that a filled circle is to be drawn.}
\item{lineType}{Type of the circle boundary. See LineTypes}
\item{shift}{Number of fractional bits in the coordinates of the center and in the radius value.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws a circle.}
\details{
The function cv::circle draws a simple or filled circle with a given center and radius.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
