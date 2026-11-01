% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_finiteMask}
\alias{cv_finiteMask}
\title{Generates a mask of finite float values, i.e}
\usage{cv_finiteMask(src, dst = NULL)}
\arguments{
\item{src}{Input matrix, should contain float or double elements of 1 to 4 channels}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Generates a mask of finite float values, i.e. not NaNs nor Infs.}
\details{
An element is set to to 255 (all 1-bits) if all channels are finite.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
