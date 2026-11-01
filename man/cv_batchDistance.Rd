% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_batchDistance}
\alias{cv_batchDistance}
\title{naive nearest neighbor finder}
\usage{cv_batchDistance(src1, src2, dtype, normType = NORM_L2, K = 0, mask = NULL,
    update = 0, crosscheck = FALSE, dist = NULL, nidx = NULL)}
\arguments{
\item{src1}{含义见下方 C++ 签名。}
\item{src2}{含义见下方 C++ 签名。}
\item{dtype}{含义见下方 C++ 签名。}
\item{normType}{含义见下方 C++ 签名。}
\item{K}{含义见下方 C++ 签名。}
\item{mask}{含义见下方 C++ 签名。}
\item{update}{含义见下方 C++ 签名。}
\item{crosscheck}{含义见下方 C++ 签名。}
\item{dist}{含义见下方 C++ 签名。}
\item{nidx}{含义见下方 C++ 签名。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{naive nearest neighbor finder}
\details{
see http://en.wikipedia.org/wiki/Nearest_neighbor_search

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
