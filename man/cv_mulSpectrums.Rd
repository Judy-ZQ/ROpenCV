% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_mulSpectrums}
\alias{cv_mulSpectrums}
\title{Performs the per-element multiplication of two Fourier spectrums}
\usage{cv_mulSpectrums(a, b, flags, conjB = FALSE, dst = NULL)}
\arguments{
\item{a}{first input array.}
\item{b}{second input array of the same size and type as src1 .}
\item{flags}{operation flags; currently, the only supported flag is cv::DFT_ROWS, which indicates that each row of src1 and src2 is an independent 1D Fourier spectrum. If you do not want to use this flag, then simply add a \code{0} as value.}
\item{conjB}{optional flag that conjugates the second input array before the multiplication (true) or not (false).}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs the per-element multiplication of two Fourier spectrums.}
\details{
The function cv::mulSpectrums performs the per-element multiplication of the two CCS-packed or complex matrices that are results of a real or complex Fourier transform.

The function, together with dft and idft, may be used to calculate convolution (pass conjB=false ) or correlation (pass conjB=true ) of two arrays rapidly. When the arrays are complex, they are simply multiplied (per element) with an optional conjugation of the second-array elements. When the arrays are real, they are assumed to be CCS-packed (see dft for details).

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
