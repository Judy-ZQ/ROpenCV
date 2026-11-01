% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_resultRoiIntersection}
\alias{cv_resultRoiIntersection}
\title{cv_resultRoiIntersection}
\usage{cv_resultRoiIntersection(corners, sizes)}
\arguments{
\item{corners}{含义见下方 C++ 签名。}
\item{sizes}{含义见下方 C++ 签名。}
}
\value{长度为 4 的整数向量 \code{c(x, y, width, height)}。}
\description{R 侧入口 \code{cv_resultRoiIntersection}，对应 C++ 的 \code{cv::detail::resultRoiIntersection}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/stitching/detail/util.hpp>}
}
\keyword{opencv}
