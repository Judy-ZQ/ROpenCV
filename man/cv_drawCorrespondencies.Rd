% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawCorrespondencies}
\alias{cv_drawCorrespondencies}
\title{Debug draw markers of matched correspondences onto a lineBundle}
\usage{cv_drawCorrespondencies(bundle = NULL, cols, colors = NULL)}
\arguments{
\item{bundle}{the lineBundle}
\item{cols}{column coordinates in the line bundle}
\item{colors}{colors for the markers. Defaults to white.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Debug draw markers of matched correspondences onto a lineBundle}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/rapid.hpp>}
}
\keyword{opencv}
