% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_computeRecallPrecisionCurve}
\alias{cv_computeRecallPrecisionCurve}
\title{cv_computeRecallPrecisionCurve}
\usage{cv_computeRecallPrecisionCurve(matches1to2, correctMatches1to2Mask,
    recallPrecisionCurve = NULL)}
\arguments{
\item{matches1to2}{含义见下方 C++ 签名。}
\item{correctMatches1to2Mask}{含义见下方 C++ 签名。}
\item{recallPrecisionCurve}{含义见下方 C++ 签名。}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{R 侧入口 \code{cv_computeRecallPrecisionCurve}，对应 C++ 的 \code{cv::computeRecallPrecisionCurve}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
}
\keyword{opencv}
