% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createRightMatcher}
\alias{cv_createRightMatcher}
\title{Convenience method to set up the matcher for computing the right-view disparity map that is required in case of filtering with confidence}
\usage{cv_createRightMatcher(matcher_left)}
\arguments{
\item{matcher_left}{main stereo matcher instance that will be used with the filter}
}
\value{\code{Ptr<StereoMatcher>} 对应的 R 对象。}
\description{Convenience method to set up the matcher for computing the right-view disparity map that is required in case of filtering with confidence.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/disparity_filter.hpp>}
}
\keyword{opencv}
