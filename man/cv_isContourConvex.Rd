% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_isContourConvex}
\alias{cv_isContourConvex}
\title{Tests a contour convexity}
\usage{cv_isContourConvex(contour)}
\arguments{
\item{contour}{Input vector of 2D points, stored in std::vector<> or Mat}
}
\value{逻辑标量。}
\description{Tests a contour convexity.}
\details{
The function tests whether the input contour is convex or not. The contour must be simple, that is, without self-intersections. Otherwise, the function output is undefined.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
