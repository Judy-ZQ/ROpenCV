% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_convertFp16}
\alias{cv_convertFp16}
\title{Converts an array to half precision floating number}
\usage{cv_convertFp16(src, dst = NULL)}
\arguments{
\item{src}{input array.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Converts an array to half precision floating number.}
\details{
This function converts FP32 (single precision floating point) from/to FP16 (half precision floating point). CV_16S format is used to represent FP16 data. There are two use modes (src -> dst): CV_32F -> CV_16S and CV_16S -> CV_32F. The input array has to have type of CV_32F or CV_16S to represent the bit depth. If the input array is neither of them, the function will raise an error. The format of half precision floating point is defined in IEEE 754-2008.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
