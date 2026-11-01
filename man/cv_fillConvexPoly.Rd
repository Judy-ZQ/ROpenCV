% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fillConvexPoly}
\alias{cv_fillConvexPoly}
\title{Fills a convex polygon}
\usage{cv_fillConvexPoly(img = NULL, points, color, lineType = LINE_8, shift = 0)}
\arguments{
\item{img}{Image.}
\item{points}{Polygon vertices.}
\item{color}{Polygon color.}
\item{lineType}{Type of the polygon boundaries. See LineTypes}
\item{shift}{Number of fractional bits in the vertex coordinates.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Fills a convex polygon.}
\details{
The function cv::fillConvexPoly draws a filled convex polygon. This function is much faster than the function fillPoly . It can fill not only convex polygons but any monotonic polygon without self-intersections, that is, a polygon whose contour intersects every horizontal line (scan line) twice at the most (though, its top-most and/or the bottom edge could be horizontal).

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
