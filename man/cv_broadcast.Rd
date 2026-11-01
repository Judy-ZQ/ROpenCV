% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_broadcast}
\alias{cv_broadcast}
\title{Broadcast the given Mat to the given shape}
\usage{cv_broadcast(src, shape, dst = NULL)}
\arguments{
\item{src}{input array}
\item{shape}{target shape. Should be a list of CV_32S numbers. Note that negative values are not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Broadcast the given Mat to the given shape.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
