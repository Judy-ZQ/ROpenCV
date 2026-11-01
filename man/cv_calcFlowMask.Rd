% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcFlowMask}
\alias{cv_calcFlowMask}
\title{cv_calcFlowMask}
\usage{cv_calcFlowMask(flowX, flowY, errors, maxError, mask0, mask1, flowMask = NULL)}
\arguments{
\item{flowX}{含义见下方 C++ 签名。}
\item{flowY}{含义见下方 C++ 签名。}
\item{errors}{含义见下方 C++ 签名。}
\item{maxError}{含义见下方 C++ 签名。}
\item{mask0}{含义见下方 C++ 签名。}
\item{mask1}{含义见下方 C++ 签名。}
\item{flowMask}{含义见下方 C++ 签名。}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{R 侧入口 \code{cv_calcFlowMask}，对应 C++ 的 \code{cv::videostab::calcFlowMask}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/videostab/inpainting.hpp>}
}
\keyword{opencv}
