% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_arcLength}
\alias{cv_arcLength}
\title{Calculates a contour perimeter or a curve length}
\usage{cv_arcLength(curve, closed)}
\arguments{
\item{curve}{Input vector of 2D points, stored in std::vector or Mat.}
\item{closed}{Flag indicating whether the curve is closed or not.}
}
\value{数值标量。}
\description{Calculates a contour perimeter or a curve length.}
\details{
The function computes a curve length or a closed contour perimeter.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
