% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_merge}
\alias{cv_merge}
\title{cv_merge}
\usage{cv_merge(mv, dst = NULL)}
\arguments{
\item{mv}{input vector of matrices to be merged; all the matrices in mv must have the same size and the same depth.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{R 侧入口 \code{cv_merge}，对应 C++ 的 \code{cv::merge}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
