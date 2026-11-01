% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_checkHardwareSupport}
\alias{cv_checkHardwareSupport}
\title{Returns true if the specified feature is supported by the host hardware}
\usage{cv_checkHardwareSupport(feature)}
\arguments{
\item{feature}{The feature of interest, one of cv::CpuFeatures}
}
\value{逻辑标量。}
\description{Returns true if the specified feature is supported by the host hardware.}
\details{
The function returns true if the host hardware supports the specified feature. When user calls setUseOptimized(false), the subsequent calls to checkHardwareSupport will return false until setUseOptimized(true) is called. This way user can dynamically switch on and off the optimized code in OpenCV.

\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
}
\keyword{opencv}
