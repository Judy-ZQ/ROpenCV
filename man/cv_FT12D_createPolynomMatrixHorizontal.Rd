% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_FT12D_createPolynomMatrixHorizontal}
\alias{cv_FT12D_createPolynomMatrixHorizontal}
\title{Creates horizontal matrix for -transform computation}
\usage{cv_FT12D_createPolynomMatrixHorizontal(radius, chn, dst = NULL)}
\arguments{
\item{radius}{Radius of the basic function.}
\item{chn}{Number of channels.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Creates horizontal matrix for -transform computation.}
\details{
The function creates helper horizontal matrix for -transfrom processing. It is used for gradient computation.

\strong{C++ 头文件：}\code{#include <opencv2/fuzzy/fuzzy_F1_math.hpp>}
}
\keyword{opencv}
