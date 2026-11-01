% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_line}
\alias{cv_line}
\title{Draws a line segment connecting two points}
\usage{cv_line(img = NULL, pt1, pt2, color, thickness = 1, lineType = LINE_8,
    shift = 0)}
\arguments{
\item{img}{Image.}
\item{pt1}{First point of the line segment.}
\item{pt2}{Second point of the line segment.}
\item{color}{Line color.}
\item{thickness}{Line thickness.}
\item{lineType}{Type of the line. See LineTypes.}
\item{shift}{Number of fractional bits in the point coordinates.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws a line segment connecting two points.}
\details{
The function line draws the line segment between pt1 and pt2 points in the image. The line is clipped by the image boundaries. For non-antialiased lines with integer coordinates, the 8-connected or 4-connected Bresenham algorithm is used. Thick lines are drawn with rounding endings. Antialiased lines are drawn using Gaussian filtering.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
