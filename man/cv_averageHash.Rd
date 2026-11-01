% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_averageHash}
\alias{cv_averageHash}
\title{Calculates img_hash::AverageHash in one call}
\usage{cv_averageHash(inputArr, dst = NULL)}
\arguments{
\item{inputArr}{input image want to compute hash value, type should be CV_8UC4, CV_8UC3 or CV_8UC1.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates img_hash::AverageHash in one call.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/img_hash/average_hash.hpp>}
}
\keyword{opencv}
