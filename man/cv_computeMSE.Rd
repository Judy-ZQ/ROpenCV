% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_computeMSE}
\alias{cv_computeMSE}
\title{Function for computing mean square error for disparity maps}
\usage{cv_computeMSE(GT, src, ROI)}
\arguments{
\item{GT}{ground truth disparity map}
\item{src}{disparity map to evaluate}
\item{ROI}{region of interest}
}
\value{returns mean square error between GT and src}
\description{Function for computing mean square error for disparity maps.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/disparity_filter.hpp>}
}
\keyword{opencv}
