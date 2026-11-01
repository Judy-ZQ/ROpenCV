% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_sampsonDistance}
\alias{cv_sampsonDistance}
\title{Calculates the Sampson Distance between two points}
\usage{cv_sampsonDistance(pt1, pt2, F)}
\arguments{
\item{pt1}{first homogeneous 2d point}
\item{pt2}{second homogeneous 2d point}
\item{F}{fundamental matrix}
}
\value{The computed Sampson distance.}
\description{Calculates the Sampson Distance between two points.}
\details{
The function cv::sampsonDistance calculates and returns the first order approximation of the geometric error as:

The fundamental matrix may be calculated using the findFundamentalMat function. See [118] 11.4.3 for details.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
