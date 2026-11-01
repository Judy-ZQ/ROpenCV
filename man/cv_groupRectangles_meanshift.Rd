% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_groupRectangles_meanshift}
\alias{cv_groupRectangles_meanshift}
\title{cv_groupRectangles_meanshift}
\usage{cv_groupRectangles_meanshift(rectList = NULL, foundWeights = NULL,
    foundScales = NULL, detectThreshold = 0, winDetSize = c(64, 128))}
\arguments{
\item{rectList}{含义见下方 C++ 签名。}
\item{foundWeights}{含义见下方 C++ 签名。}
\item{foundScales}{含义见下方 C++ 签名。}
\item{detectThreshold}{含义见下方 C++ 签名。}
\item{winDetSize}{含义见下方 C++ 签名。}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{R 侧入口 \code{cv_groupRectangles_meanshift}，对应 C++ 的 \code{cv::groupRectangles_meanshift}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/xobjdetect.hpp>}
}
\keyword{opencv}
