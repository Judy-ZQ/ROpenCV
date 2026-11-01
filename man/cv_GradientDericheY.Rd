% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_GradientDericheY}
\alias{cv_GradientDericheY}
\title{Applies Y Deriche filter to an image}
\usage{cv_GradientDericheY(op, alpha, omega, dst = NULL)}
\arguments{
\item{op}{Source 8-bit or 16bit image, 1-channel or 3-channel image.}
\item{alpha}{double see paper}
\item{omega}{double see paper}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies Y Deriche filter to an image.}
\details{
For more details about this implementation, please see http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.476.5736&rep=rep1&type=pdf

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/deriche_filter.hpp>}
}
\keyword{opencv}
