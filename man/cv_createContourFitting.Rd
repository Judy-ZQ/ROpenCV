% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createContourFitting}
\alias{cv_createContourFitting}
\title{create ContourFitting algorithm object}
\usage{cv_createContourFitting(ctr = 1024, fd = 16)}
\arguments{
\item{ctr}{number of Fourier descriptors equal to number of contour points after resampling.}
\item{fd}{Contour defining second shape (Target).}
}
\value{\code{Ptr<ContourFitting>} 对应的 R 对象。}
\description{create ContourFitting algorithm object}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/fourier_descriptors.hpp>}
}
\keyword{opencv}
