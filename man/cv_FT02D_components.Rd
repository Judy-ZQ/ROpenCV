% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_FT02D_components}
\alias{cv_FT02D_components}
\title{Computes components of the array using direct -transform}
\usage{cv_FT02D_components(matrix, kernel, mask = NULL, dst = NULL)}
\arguments{
\item{matrix}{Input array.}
\item{kernel}{Kernel used for processing. Function \code{ft::createKernel} can be used.}
\item{mask}{Mask can be used for unwanted area marking.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes components of the array using direct -transform.}
\details{
The function computes components using predefined kernel and mask.

\strong{C++ 头文件：}\code{#include <opencv2/fuzzy/fuzzy_F0_math.hpp>}
}
\keyword{opencv}
