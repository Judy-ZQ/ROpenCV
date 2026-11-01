% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_anisotropicDiffusion}
\alias{cv_anisotropicDiffusion}
\title{Performs anisotropic diffusion on an image}
\usage{cv_anisotropicDiffusion(src, alpha, K, niters, dst = NULL)}
\arguments{
\item{src}{Source image with 3 channels.}
\item{alpha}{The amount of time to step forward by on each iteration (normally, it's between 0 and 1).}
\item{K}{sensitivity to the edges}
\item{niters}{The number of iterations}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs anisotropic diffusion on an image.}
\details{
The function applies Perona-Malik anisotropic diffusion to an image. This is the solution to the partial differential equation:

Suggested functions for c(x,y,t) are:

or

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc.hpp>}
}
\keyword{opencv}
