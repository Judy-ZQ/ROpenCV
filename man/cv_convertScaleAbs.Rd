% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_convertScaleAbs}
\alias{cv_convertScaleAbs}
\title{Scales, calculates absolute values, and converts the result to 8-bit}
\usage{cv_convertScaleAbs(src, alpha = 1, beta = 0, dst = NULL)}
\arguments{
\item{src}{input array.}
\item{alpha}{optional scale factor.}
\item{beta}{optional delta added to the scaled values.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Scales, calculates absolute values, and converts the result to 8-bit.}
\details{
On each element of the input array, the function convertScaleAbs performs three operations sequentially: scaling, taking an absolute value, conversion to an unsigned 8-bit type:

In case of multi-channel arrays, the function processes each channel independently. When the output is not 8-bit, the operation can be emulated by calling the Mat::convertTo method (or by using matrix expressions) and then by calculating an absolute value of the result. For example:

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
