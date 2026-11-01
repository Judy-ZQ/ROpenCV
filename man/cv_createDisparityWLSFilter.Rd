% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createDisparityWLSFilter}
\alias{cv_createDisparityWLSFilter}
\title{Convenience factory method that creates an instance of DisparityWLSFilter and sets up all the relevant filter parameters automatically base}
\usage{cv_createDisparityWLSFilter(matcher_left)}
\arguments{
\item{matcher_left}{stereo matcher instance that will be used with the filter}
}
\value{\code{Ptr<DisparityWLSFilter>} 对应的 R 对象。}
\description{Convenience factory method that creates an instance of DisparityWLSFilter and sets up all the relevant filter parameters automatically based on the matcher instance. Currently supports only StereoBM and StereoSGBM.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/disparity_filter.hpp>}
}
\keyword{opencv}
