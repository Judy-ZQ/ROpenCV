% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_hconcat}
\alias{cv_hconcat}
\title{cv_hconcat}
\usage{cv_hconcat(src, dst = NULL)}
\arguments{
\item{src}{input array or vector of matrices. all of the matrices must have the same number of rows and the same depth.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{R 侧入口 \code{cv_hconcat}，对应 C++ 的 \code{cv::hconcat}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
