% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getCPUFeaturesLine}
\alias{cv_getCPUFeaturesLine}
\title{Returns list of CPU features enabled during compilation}
\usage{cv_getCPUFeaturesLine()}
\value{字符串。}
\description{Returns list of CPU features enabled during compilation.}
\details{
Returned value is a string containing space separated list of CPU features with following markers:

\itemize{
\item no markers - baseline features
\item prefix \code{*} - features enabled in dispatcher
\item suffix \code{?} - features enabled but not available in HW
}

Example: \code{SSE SSE2 SSE3 *SSE4.1 *SSE4.2 *FP16 *AVX *AVX2 *AVX512-SKX?}

\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
}
\keyword{opencv}
