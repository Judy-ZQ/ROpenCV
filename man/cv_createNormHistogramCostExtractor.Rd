% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createNormHistogramCostExtractor}
\alias{cv_createNormHistogramCostExtractor}
\title{cv_createNormHistogramCostExtractor}
\usage{cv_createNormHistogramCostExtractor(flag = DIST_L2, nDummies = 25,
    defaultCost = 0.2)}
\arguments{
\item{flag}{含义见下方 C++ 签名。}
\item{nDummies}{含义见下方 C++ 签名。}
\item{defaultCost}{含义见下方 C++ 签名。}
}
\value{\code{Ptr<HistogramCostExtractor>} 对应的 R 对象。}
\description{R 侧入口 \code{cv_createNormHistogramCostExtractor}，对应 C++ 的 \code{cv::createNormHistogramCostExtractor}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/shape/hist_cost.hpp>}
}
\keyword{opencv}
