% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_FT12D_polynomial}
\alias{cv_FT12D_polynomial}
\title{Computes elements of -transform components}
\usage{cv_FT12D_polynomial(matrix, kernel, mask = NULL, c00 = NULL, c10 = NULL,
    c01 = NULL, components = NULL)}
\arguments{
\item{matrix}{Input array.}
\item{kernel}{Kernel used for processing. Function \code{ft::createKernel} can be used.}
\item{mask}{Mask can be used for unwanted area marking.}
\item{c00}{Elements represent average color.}
\item{c10}{Elements represent average vertical gradient.}
\item{c01}{Elements represent average horizontal gradient.}
\item{components}{Output 32-bit float array for the components.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes elements of -transform components.}
\details{
The function computes components and its elements using predefined kernel and mask.

\strong{C++ 头文件：}\code{#include <opencv2/fuzzy/fuzzy_F1_math.hpp>}
}
\keyword{opencv}
