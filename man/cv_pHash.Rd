% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_pHash}
\alias{cv_pHash}
\title{Computes pHash value of the input image}
\usage{cv_pHash(inputArr, dst = NULL)}
\arguments{
\item{inputArr}{input image want to compute hash value, type should be CV_8UC4, CV_8UC3, CV_8UC1.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes pHash value of the input image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/img_hash/phash.hpp>}
}
\keyword{opencv}
