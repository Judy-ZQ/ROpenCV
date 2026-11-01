% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_patchNaNs}
\alias{cv_patchNaNs}
\title{Replaces NaNs by given number}
\usage{cv_patchNaNs(a = NULL, val = 0)}
\arguments{
\item{a}{input/output matrix (CV_32F or CV_64F type)}
\item{val}{value to convert the NaNs}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Replaces NaNs by given number.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
