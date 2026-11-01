% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_FT12D_components}
\alias{cv_FT12D_components}
\title{Computes components of the array using direct -transform}
\usage{cv_FT12D_components(matrix, kernel, dst = NULL)}
\arguments{
\item{matrix}{Input array.}
\item{kernel}{Kernel used for processing. Function \code{ft::createKernel} can be used.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes components of the array using direct -transform.}
\details{
The function computes linear components using predefined kernel.

\strong{C++ 头文件：}\code{#include <opencv2/fuzzy/fuzzy_F1_math.hpp>}
}
\keyword{opencv}
