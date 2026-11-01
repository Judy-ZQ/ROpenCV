% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_bitwise_xor}
\alias{cv_bitwise_xor}
\title{Calculates the per-element bit-wise "exclusive or" operation on two arrays or an array and a scalar}
\usage{cv_bitwise_xor(src1, src2, mask = NULL, dst = NULL)}
\arguments{
\item{src1}{first input array or a scalar.}
\item{src2}{second input array or a scalar.}
\item{mask}{optional operation mask, CV_8U, CV_8S or CV_Bool single channel array, that specifies elements of the output array to be changed.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the per-element bit-wise "exclusive or" operation on two arrays or an array and a scalar.}
\details{
The function cv::bitwise_xor calculates the per-element bit-wise logical "exclusive-or" operation for: Two arrays when src1 and src2 have the same size:

An array and a scalar when src2 is constructed from Scalar or has the same number of elements as \code{src1.channels }:

A scalar and an array when src1 is constructed from Scalar or has the same number of elements as \code{src2.channels }:

In case of floating-point arrays, their machine-specific bit representations (usually IEEE754-compliant) are used for the operation. In case of multi-channel arrays, each channel is processed independently. In the 2nd and 3rd cases above, the scalar is first converted to the array type.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
