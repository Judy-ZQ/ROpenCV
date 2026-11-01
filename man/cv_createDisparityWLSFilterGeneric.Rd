% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createDisparityWLSFilterGeneric}
\alias{cv_createDisparityWLSFilterGeneric}
\title{More generic factory method, create instance of DisparityWLSFilter and execute basic initialization routines}
\usage{cv_createDisparityWLSFilterGeneric(use_confidence)}
\arguments{
\item{use_confidence}{filtering with confidence requires two disparity maps (for the left and right views) and is approximately two times slower. However, quality is typically significantly better.}
}
\value{\code{Ptr<DisparityWLSFilter>} 对应的 R 对象。}
\description{More generic factory method, create instance of DisparityWLSFilter and execute basic initialization routines. When using this method you will need to set-up the ROI, matchers and other parameters by yourself.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/disparity_filter.hpp>}
}
\keyword{opencv}
