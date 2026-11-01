% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findCorrespondencies}
\alias{cv_findCorrespondencies}
\title{Find corresponding image locations by searching for a maximal sobel edge along the search line (a single row in the bundle)}
\usage{cv_findCorrespondencies(bundle, cols = NULL, response = NULL)}
\arguments{
\item{bundle}{the line bundle}
\item{cols}{correspondence-position per line in line-bundle-space}
\item{response}{the sobel response for the selected point}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Find corresponding image locations by searching for a maximal sobel edge along the search line (a single row in the bundle)}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/rapid.hpp>}
}
\keyword{opencv}
