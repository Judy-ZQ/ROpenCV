% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_FT02D_iteration}
\alias{cv_FT02D_iteration}
\title{Computes -transfrom and inverse -transfrom at once and return state}
\usage{cv_FT02D_iteration(matrix, kernel, mask = NULL, firstStop, output = NULL,
    maskOutput = NULL)}
\arguments{
\item{matrix}{Input matrix.}
\item{kernel}{Kernel used for processing. Function \code{ft::createKernel} can be used.}
\item{mask}{Mask used for unwanted area marking.}
\item{firstStop}{If true function returns -1 when first problem appears. In case of \code{false} the process is completed and summation of all problems returned.}
\item{output}{Output 32-bit float array.}
\item{maskOutput}{Mask after one iteration.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Computes -transfrom and inverse -transfrom at once and return state.}
\details{
This function computes iteration of F-transfrom and inverse F-transfotm and handle image and mask change. The function is used in \code{ft::inpaint} function.

\strong{C++ 头文件：}\code{#include <opencv2/fuzzy/fuzzy_F0_math.hpp>}
}
\keyword{opencv}
