% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_Mahalanobis}
\alias{cv_Mahalanobis}
\title{Calculates the Mahalanobis distance between two vectors}
\usage{cv_Mahalanobis(v1, v2, icovar)}
\arguments{
\item{v1}{first 1D input vector.}
\item{v2}{second 1D input vector.}
\item{icovar}{inverse covariance matrix.}
}
\value{数值标量。}
\description{Calculates the Mahalanobis distance between two vectors.}
\details{
The function cv::Mahalanobis calculates and returns the weighted distance between two vectors:

The covariance matrix may be calculated using the calcCovarMatrix function and then inverted using the invert function (preferably using the DECOMP_SVD method, as the most accurate).

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
