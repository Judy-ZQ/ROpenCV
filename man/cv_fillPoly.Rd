% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fillPoly}
\alias{cv_fillPoly}
\title{Fills the area bounded by one or more polygons}
\usage{cv_fillPoly(img = NULL, pts, color, lineType = LINE_8, shift = 0,
    offset = NULL)}
\arguments{
\item{img}{Image.}
\item{pts}{Array of polygons where each polygon is represented as an array of points.}
\item{color}{Polygon color.}
\item{lineType}{Type of the polygon boundaries. See LineTypes}
\item{shift}{Number of fractional bits in the vertex coordinates.}
\item{offset}{Optional offset of all points of the contours.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Fills the area bounded by one or more polygons.}
\details{
The function cv::fillPoly fills an area bounded by several polygonal contours. The function can fill complex areas, for example, areas with holes, contours with self-intersections (some of their parts), and so forth.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
