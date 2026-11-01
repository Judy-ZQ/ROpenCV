% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_borderInterpolate}
\alias{cv_borderInterpolate}
\title{Computes the source location of an extrapolated pixel}
\usage{cv_borderInterpolate(p, len, borderType)}
\arguments{
\item{p}{0-based coordinate of the extrapolated pixel along one of the axes, likely <0 or >= len}
\item{len}{Length of the array along the corresponding axis.}
\item{borderType}{Border type, one of the BorderTypes, except for BORDER_TRANSPARENT and BORDER_ISOLATED. When borderType==BORDER_CONSTANT, the function always returns -1, regardless of p and len.}
}
\value{整数标量。}
\description{Computes the source location of an extrapolated pixel.}
\details{
The function computes and returns the coordinate of a donor pixel corresponding to the specified extrapolated pixel when using the specified extrapolation border mode. For example, if you use cv::BORDER_WRAP mode in the horizontal direction, cv::BORDER_REFLECT_101 in the vertical direction and want to compute value of the "virtual" pixel Point(-5, 100) in a floating-point image img, it looks like:

Normally, the function is not called directly. It is used inside filtering functions and also in copyMakeBorder.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_copyMakeBorder}}}
\keyword{opencv}
