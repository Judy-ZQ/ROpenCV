% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fitEllipse}
\alias{cv_fitEllipse}
\title{Fits an ellipse around a set of 2D points}
\usage{cv_fitEllipse(points)}
\arguments{
\item{points}{Input 2D point set, stored in std::vector<> or Mat}
}
\value{长度为 5 的数值向量 \code{c(cx, cy, width, height, angle)}。}
\description{Fits an ellipse around a set of 2D points.}
\details{
The function calculates the ellipse that fits (in a least-squares sense) a set of 2D points best of all. It returns the rotated rectangle in which the ellipse is inscribed. The first algorithm described by [93] is used. Developer should keep in mind that it is possible that the returned ellipse/rotatedRect data contains negative indices, due to the data points being close to the border of the containing Mat element.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
