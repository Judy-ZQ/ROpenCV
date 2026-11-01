% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_boundingRect}
\alias{cv_boundingRect}
\title{Calculates the up-right bounding rectangle of a point set or non-zero pixels of gray-scale image}
\usage{cv_boundingRect(array)}
\arguments{
\item{array}{Input gray-scale image or 2D point set, stored in std::vector or Mat.}
}
\value{长度为 4 的整数向量 \code{c(x, y, width, height)}。}
\description{Calculates the up-right bounding rectangle of a point set or non-zero pixels of gray-scale image.}
\details{
The function calculates and returns the minimal up-right bounding rectangle for the specified point set or non-zero pixels of gray-scale image.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
