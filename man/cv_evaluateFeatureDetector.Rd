% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_evaluateFeatureDetector}
\alias{cv_evaluateFeatureDetector}
\title{cv_evaluateFeatureDetector}
\usage{cv_evaluateFeatureDetector(img1, img2, H1to2, repeatability = NULL,
    correspCount = NULL, fdetector = NULL)}
\arguments{
\item{img1}{含义见下方 C++ 签名。}
\item{img2}{含义见下方 C++ 签名。}
\item{H1to2}{含义见下方 C++ 签名。}
\item{repeatability}{含义见下方 C++ 签名。}
\item{correspCount}{含义见下方 C++ 签名。}
\item{fdetector}{含义见下方 C++ 签名。}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{R 侧入口 \code{cv_evaluateFeatureDetector}，对应 C++ 的 \code{cv::evaluateFeatureDetector}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
}
\keyword{opencv}
