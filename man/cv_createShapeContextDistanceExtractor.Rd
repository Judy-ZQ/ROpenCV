% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createShapeContextDistanceExtractor}
\alias{cv_createShapeContextDistanceExtractor}
\title{cv_createShapeContextDistanceExtractor}
\usage{cv_createShapeContextDistanceExtractor(nAngularBins = 12, nRadialBins = 4,
    innerRadius = 0.2, outerRadius = 2, iterations = 3, comparer = NULL,
    transformer = NULL)}
\arguments{
\item{nAngularBins}{含义见下方 C++ 签名。}
\item{nRadialBins}{含义见下方 C++ 签名。}
\item{innerRadius}{含义见下方 C++ 签名。}
\item{outerRadius}{含义见下方 C++ 签名。}
\item{iterations}{含义见下方 C++ 签名。}
\item{comparer}{含义见下方 C++ 签名。}
\item{transformer}{含义见下方 C++ 签名。}
}
\value{\code{Ptr<ShapeContextDistanceExtractor>} 对应的 R 对象。}
\description{R 侧入口 \code{cv_createShapeContextDistanceExtractor}，对应 C++ 的 \code{cv::createShapeContextDistanceExtractor}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/shape/shape_distance.hpp>}
}
\keyword{opencv}
