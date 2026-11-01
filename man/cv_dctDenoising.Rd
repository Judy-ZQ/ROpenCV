% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_dctDenoising}
\alias{cv_dctDenoising}
\title{The function implements simple dct-based denoising}
\usage{cv_dctDenoising(src, dst = NULL, sigma, psize = 16)}
\arguments{
\item{src}{source image}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{sigma}{expected noise standard deviation}
\item{psize}{size of block side where dct is computed}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{The function implements simple dct-based denoising.}
\details{
http://www.ipol.im/pub/art/2011/ys-dct/.

\strong{C++ 头文件：}\code{#include <opencv2/xphoto/dct_image_denoising.hpp>}
}
\keyword{opencv}
