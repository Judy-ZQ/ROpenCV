% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_FT12D_inverseFT}
\alias{cv_FT12D_inverseFT}
\title{Computes inverse -transfrom}
\usage{cv_FT12D_inverseFT(components, kernel, width, height, dst = NULL)}
\arguments{
\item{components}{Input 32-bit float single channel array for the components.}
\item{kernel}{Kernel used for processing. The same kernel as for components computation must be used.}
\item{width}{Width of the output array.}
\item{height}{Height of the output array.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes inverse -transfrom.}
\details{
Computation of inverse -transform.

\strong{C++ 头文件：}\code{#include <opencv2/fuzzy/fuzzy_F1_math.hpp>}
}
\keyword{opencv}
