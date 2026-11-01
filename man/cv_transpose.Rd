% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_transpose}
\alias{cv_transpose}
\title{Transposes a matrix}
\usage{cv_transpose(src, dst = NULL)}
\arguments{
\item{src}{input array.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Transposes a matrix.}
\details{
The function cv::transpose transposes the matrix src :

\strong{注意：}No complex conjugation is done in case of a complex matrix. It should be done separately if needed.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
