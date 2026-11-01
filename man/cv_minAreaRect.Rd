% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_minAreaRect}
\alias{cv_minAreaRect}
\title{Finds a rotated rectangle of the minimum area enclosing the input 2D point set}
\usage{cv_minAreaRect(points)}
\arguments{
\item{points}{Input vector of 2D points, stored in std::vector<> or Mat}
}
\value{长度为 5 的数值向量 \code{c(cx, cy, width, height, angle)}。}
\description{Finds a rotated rectangle of the minimum area enclosing the input 2D point set.}
\details{
The function calculates and returns the minimum-area bounding rectangle (possibly rotated) for a specified point set. Developer should keep in mind that the returned RotatedRect can contain negative indices when data is close to the containing Mat element boundary.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
