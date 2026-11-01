% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_divSpectrums}
\alias{cv_divSpectrums}
\title{Performs the per-element division of the first Fourier spectrum by the second Fourier spectrum}
\usage{cv_divSpectrums(a, b, flags, conjB = FALSE, dst = NULL)}
\arguments{
\item{a}{first input array.}
\item{b}{second input array of the same size and type as src1 .}
\item{flags}{operation flags; currently, the only supported flag is cv::DFT_ROWS, which indicates that each row of src1 and src2 is an independent 1D Fourier spectrum. If you do not want to use this flag, then simply add a \code{0} as value.}
\item{conjB}{optional flag that conjugates the second input array before the multiplication (true) or not (false).}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs the per-element division of the first Fourier spectrum by the second Fourier spectrum.}
\details{
The function cv::divSpectrums performs the per-element division of the first array by the second array. The arrays are CCS-packed or complex matrices that are results of a real or complex Fourier transform.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
