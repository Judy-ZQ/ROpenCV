% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_idct}
\alias{cv_idct}
\title{Calculates the inverse Discrete Cosine Transform of a 1D or 2D array}
\usage{cv_idct(src, flags = 0, dst = NULL)}
\arguments{
\item{src}{input floating-point single-channel array.}
\item{flags}{operation flags.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the inverse Discrete Cosine Transform of a 1D or 2D array.}
\details{
idct(src, dst, flags) is equivalent to dct(src, dst, flags | DCT_INVERSE).

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_dct}}、\code{\link{cv_dft}}、\code{\link{cv_idft}}、\code{\link{cv_getOptimalDFTSize}}}
\keyword{opencv}
