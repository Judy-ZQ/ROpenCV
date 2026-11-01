% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_leaveBiggestComponent}
\alias{cv_leaveBiggestComponent}
\title{cv_leaveBiggestComponent}
\usage{cv_leaveBiggestComponent(features = NULL, pairwise_matches = NULL,
    conf_threshold)}
\arguments{
\item{features}{含义见下方 C++ 签名。}
\item{pairwise_matches}{含义见下方 C++ 签名。}
\item{conf_threshold}{含义见下方 C++ 签名。}
}
\value{list，每项为 \code{int} 对应的 R 对象。}
\description{R 侧入口 \code{cv_leaveBiggestComponent}，对应 C++ 的 \code{cv::detail::leaveBiggestComponent}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/stitching/detail/motion_estimators.hpp>}
}
\keyword{opencv}
