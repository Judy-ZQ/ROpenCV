% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_checkRange}
\alias{cv_checkRange}
\title{Checks every element of an input array for invalid values}
\usage{cv_checkRange(a, quiet = TRUE, minVal = -Inf, maxVal = Inf)}
\arguments{
\item{a}{input array.}
\item{quiet}{a flag, indicating whether the functions quietly return false when the array elements are out of range or they throw an exception.}
\item{minVal}{inclusive lower boundary of valid values range.}
\item{maxVal}{exclusive upper boundary of valid values range.}
}
\value{逻辑标量。}
\description{Checks every element of an input array for invalid values.}
\details{
The function cv::checkRange checks that every array element is neither NaN nor infinite. When minVal > -DBL_MAX and maxVal < DBL_MAX, the function also checks that each value is between minVal and maxVal. In case of multi-channel arrays, each channel is processed independently. If some values are out of range, position of the first outlier is stored in pos (when pos != NULL). Then, the function either returns false (when quiet=true) or throws an exception.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
