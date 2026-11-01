% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getOptimalDFTSize}
\alias{cv_getOptimalDFTSize}
\title{Returns the optimal DFT size for a given vector size}
\usage{cv_getOptimalDFTSize(vecsize)}
\arguments{
\item{vecsize}{vector size.}
}
\value{整数标量。}
\description{Returns the optimal DFT size for a given vector size.}
\details{
DFT performance is not a monotonic function of a vector size. Therefore, when you calculate convolution of two arrays or perform the spectral analysis of an array, it usually makes sense to pad the input data with zeros to get a bit larger array that can be transformed much faster than the original one. Arrays whose size is a power-of-two (2, 4, 8, 16, 32, ...) are the fastest to process. Though, the arrays whose size is a product of 2's, 3's, and 5's (for example, 300 = 5*5*3*2*2) are also processed quite efficiently.

The function cv::getOptimalDFTSize returns the minimum number N that is greater than or equal to vecsize so that the DFT of a vector of size N can be processed efficiently. In the current implementation N = 2 ^p^ * 3 ^q^ * 5 ^r^ for some integer p, q, r.

The function returns a negative number if vecsize is too large (very close to INT_MAX ).

While the function cannot be used directly to estimate the optimal vector size for DCT transform (since the current DCT implementation supports only even-size vectors), it can be easily processed as getOptimalDFTSize((vecsize+1)/2)*2.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_dft}}、\code{\link{cv_dct}}、\code{\link{cv_idft}}、\code{\link{cv_idct}}、\code{\link{cv_mulSpectrums}}}
\keyword{opencv}
