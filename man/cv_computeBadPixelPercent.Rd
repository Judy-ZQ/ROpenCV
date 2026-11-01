% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_computeBadPixelPercent}
\alias{cv_computeBadPixelPercent}
\title{Function for computing the percent of "bad" pixels in the disparity map (pixels where error is higher than a specified threshold)}
\usage{cv_computeBadPixelPercent(GT, src, ROI, thresh = 24)}
\arguments{
\item{GT}{ground truth disparity map}
\item{src}{disparity map to evaluate}
\item{ROI}{region of interest}
\item{thresh}{threshold used to determine "bad" pixels}
}
\value{returns mean square error between GT and src}
\description{Function for computing the percent of "bad" pixels in the disparity map (pixels where error is higher than a specified threshold)}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/disparity_filter.hpp>}
}
\keyword{opencv}
