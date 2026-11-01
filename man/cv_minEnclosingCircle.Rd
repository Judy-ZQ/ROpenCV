% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_minEnclosingCircle}
\alias{cv_minEnclosingCircle}
\title{Finds a circle of the minimum area enclosing a 2D point set}
\usage{cv_minEnclosingCircle(points)}
\arguments{
\item{points}{Input vector of 2D points, stored in std::vector<> or Mat}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Finds a circle of the minimum area enclosing a 2D point set.}
\details{
The function finds the minimal enclosing circle of a 2D point set using an iterative algorithm.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
