% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createWeightMap}
\alias{cv_createWeightMap}
\title{cv_createWeightMap}
\usage{cv_createWeightMap(mask = NULL, sharpness, weight = NULL)}
\arguments{
\item{mask}{含义见下方 C++ 签名。}
\item{sharpness}{含义见下方 C++ 签名。}
\item{weight}{含义见下方 C++ 签名。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{R 侧入口 \code{cv_createWeightMap}，对应 C++ 的 \code{cv::detail::createWeightMap}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/stitching/detail/blenders.hpp>}
}
\keyword{opencv}
