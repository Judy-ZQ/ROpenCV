% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_addNoisePC}
\alias{cv_addNoisePC}
\title{Adds a uniform noise in the given scale to the input point cloud}
\usage{cv_addNoisePC(pc, scale)}
\arguments{
\item{pc}{Input point cloud (CV_32F family).}
\item{scale}{Input scale of the noise. The larger the scale, the more noisy the output}
}
\value{\code{cvMat} 图像。}
\description{Adds a uniform noise in the given scale to the input point cloud}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/surface_matching/ppf_helpers.hpp>}
}
\keyword{opencv}
