% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_polylines}
\alias{cv_polylines}
\title{Draws several polygonal curves}
\usage{cv_polylines(img = NULL, pts, isClosed, color, thickness = 1,
    lineType = LINE_8, shift = 0)}
\arguments{
\item{img}{Image.}
\item{pts}{Array of polygonal curves.}
\item{isClosed}{Flag indicating whether the drawn polylines are closed or not. If they are closed, the function draws a line from the last vertex of each curve to its first vertex.}
\item{color}{Polyline color.}
\item{thickness}{Thickness of the polyline edges.}
\item{lineType}{Type of the line segments. See LineTypes}
\item{shift}{Number of fractional bits in the vertex coordinates.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws several polygonal curves.}
\details{
The function cv::polylines draws one or more polygonal curves.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
