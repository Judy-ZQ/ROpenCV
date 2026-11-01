% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_l0Smooth}
\alias{cv_l0Smooth}
\title{Global image smoothing via L0 gradient minimization}
\usage{cv_l0Smooth(src, lambda = 0.02, kappa = 2, dst = NULL)}
\arguments{
\item{src}{source image for filtering with unsigned 8-bit or signed 16-bit or floating-point depth.}
\item{lambda}{parameter defining the smooth term weight.}
\item{kappa}{parameter defining the increasing factor of the weight of the gradient data term.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Global image smoothing via L0 gradient minimization.}
\details{
For more details about L0 Smoother, see the original paper [307].

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\keyword{opencv}
