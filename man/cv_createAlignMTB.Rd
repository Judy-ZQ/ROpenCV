% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createAlignMTB}
\alias{cv_createAlignMTB}
\title{Creates AlignMTB object}
\usage{cv_createAlignMTB(max_bits = 6, exclude_range = 4, cut = TRUE)}
\arguments{
\item{max_bits}{logarithm to the base 2 of maximal shift in each dimension. Values of 5 and 6 are usually good enough (31 and 63 pixels shift respectively).}
\item{exclude_range}{range for exclusion bitmap that is constructed to suppress noise around the median value.}
\item{cut}{if true cuts images, otherwise fills the new regions with zeros.}
}
\value{\code{Ptr<AlignMTB>} 对应的 R 对象。}
\description{Creates AlignMTB object.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
