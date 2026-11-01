% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createRLEImage}
\alias{cv_createRLEImage}
\title{Creates a run-length encoded image from a vector of runs (column begin, column end, row)}
\usage{cv_createRLEImage(runs, size = c(0, 0), dst = NULL)}
\arguments{
\item{runs}{vector of runs}
\item{size}{image size (to be used if an "on" boundary should be used in erosion, using the default means that the size is computed from the extension of the input)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Creates a run-length encoded image from a vector of runs (column begin, column end, row)}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/run_length_morphology.hpp>}
}
\keyword{opencv}
