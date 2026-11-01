% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_marrHildrethHash}
\alias{cv_marrHildrethHash}
\title{Computes average hash value of the input image}
\usage{cv_marrHildrethHash(inputArr, alpha = 2, scale = 1, dst = NULL)}
\arguments{
\item{inputArr}{input image want to compute hash value, type should be CV_8UC4, CV_8UC3, CV_8UC1.}
\item{alpha}{int scale factor for marr wavelet (default=2).}
\item{scale}{int level of scale factor (default = 1)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes average hash value of the input image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/img_hash/marr_hildreth_hash.hpp>}
}
\keyword{opencv}
