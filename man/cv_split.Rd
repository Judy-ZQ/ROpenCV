% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_split}
\alias{cv_split}
\title{cv_split}
\usage{cv_split(m, mv = NULL)}
\arguments{
\item{m}{input multi-channel array.}
\item{mv}{output vector of arrays; the arrays themselves are reallocated, if needed.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{R 侧入口 \code{cv_split}，对应 C++ 的 \code{cv::split}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
