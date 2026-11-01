% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_illuminationChange}
\alias{cv_illuminationChange}
\title{Applying an appropriate non-linear transformation to the gradient field inside the selection and then integrating back with a Poisson solve}
\usage{cv_illuminationChange(src, mask = NULL, alpha = 0.2, beta = 0.4, dst = NULL)}
\arguments{
\item{src}{Input 8-bit 3-channel image.}
\item{mask}{Input 8-bit 1 or 3-channel image.}
\item{alpha}{Value ranges between 0-2.}
\item{beta}{Value ranges between 0-2.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applying an appropriate non-linear transformation to the gradient field inside the selection and then integrating back with a Poisson solver, modifies locally the apparent illumination of an image.}
\details{
This is useful to highlight under-exposed foreground objects or to reduce specular reflections.

\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
