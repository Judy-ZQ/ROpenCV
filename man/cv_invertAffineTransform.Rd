% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_invertAffineTransform}
\alias{cv_invertAffineTransform}
\title{Inverts an affine transformation}
\usage{cv_invertAffineTransform(M, dst = NULL)}
\arguments{
\item{M}{Original affine transformation.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Inverts an affine transformation.}
\details{
The function computes an inverse affine transformation represented by matrix M:

The result is also a matrix of the same type as M.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
