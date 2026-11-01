% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_idft}
\alias{cv_idft}
\title{Calculates the inverse Discrete Fourier Transform of a 1D or 2D array}
\usage{cv_idft(src, flags = 0, nonzeroRows = 0, dst = NULL)}
\arguments{
\item{src}{input floating-point real or complex array.}
\item{flags}{operation flags (see dft and DftFlags).}
\item{nonzeroRows}{number of dst rows to process; the rest of the rows have undefined content (see the convolution sample in dft description.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the inverse Discrete Fourier Transform of a 1D or 2D array.}
\details{
idft(src, dst, flags) is equivalent to dft(src, dst, flags | DFT_INVERSE) .

\strong{注意：}None of dft and idft scales the result by default. So, you should pass DFT_SCALE to one of dft or idft explicitly to make these transforms mutually inverse.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_dft}}、\code{\link{cv_dct}}、\code{\link{cv_idct}}、\code{\link{cv_mulSpectrums}}、\code{\link{cv_getOptimalDFTSize}}}
\keyword{opencv}
