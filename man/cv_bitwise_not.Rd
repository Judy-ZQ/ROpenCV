% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_bitwise_not}
\alias{cv_bitwise_not}
\title{Inverts every bit of an array}
\usage{cv_bitwise_not(src, mask = NULL, dst = NULL)}
\arguments{
\item{src}{input array.}
\item{mask}{optional operation mask, CV_8U, CV_8S or CV_Bool single channel array, that specifies elements of the output array to be changed.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Inverts every bit of an array.}
\details{
The function cv::bitwise_not calculates per-element bit-wise inversion of the input array:

In case of a floating-point input array, its machine-specific bit representation (usually IEEE754-compliant) is used for the operation. In case of multi-channel arrays, each channel is processed independently.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
