% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_pointPolygonTest}
\alias{cv_pointPolygonTest}
\title{Performs a point-in-contour test}
\usage{cv_pointPolygonTest(contour, pt, measureDist)}
\arguments{
\item{contour}{Input contour.}
\item{pt}{Point tested against the contour.}
\item{measureDist}{If true, the function estimates the signed distance from the point to the nearest contour edge. Otherwise, the function only checks if the point is inside a contour or not.}
}
\value{数值标量。}
\description{Performs a point-in-contour test.}
\details{
The function determines whether the point is inside a contour, outside, or lies on an edge (or coincides with a vertex). It returns positive (inside), negative (outside), or zero (on an edge) value, correspondingly. When measureDist=false , the return value is +1, -1, and 0, respectively. Otherwise, the return value is a signed distance between the point and the nearest contour edge.

See below a sample output of the function where each image pixel is tested against the contour:

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
