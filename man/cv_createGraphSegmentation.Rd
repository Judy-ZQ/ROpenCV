% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createGraphSegmentation}
\alias{cv_createGraphSegmentation}
\title{Creates a graph based segmentor}
\usage{cv_createGraphSegmentation(sigma = 0.5, k = 300, min_size = 100)}
\arguments{
\item{sigma}{The sigma parameter, used to smooth image}
\item{k}{The k parameter of the algorythm}
\item{min_size}{The minimum size of segments}
}
\value{\code{Ptr<GraphSegmentation>} 对应的 R 对象。}
\description{Creates a graph based segmentor.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/segmentation.hpp>}
}
\keyword{opencv}
