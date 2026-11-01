% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_dct}
\alias{cv_dct}
\title{Performs a forward or inverse discrete Cosine transform of 1D or 2D array}
\usage{cv_dct(src, flags = 0, dst = NULL)}
\arguments{
\item{src}{input floating-point array.}
\item{flags}{transformation flags as a combination of cv::DftFlags (DCT_*)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs a forward or inverse discrete Cosine transform of 1D or 2D array.}
\details{
The function cv::dct performs a forward or inverse discrete Cosine transform (DCT) of a 1D or 2D floating-point array:

\itemize{
\item Forward Cosine transform of a 1D vector of N elements: where and , for j > 0.
\item Inverse Cosine transform of a 1D vector of N elements: (since is an orthogonal matrix, )
\item Forward 2D Cosine transform of M x N matrix:
\item Inverse 2D Cosine transform of M x N matrix:
}

The function chooses the mode of operation by looking at the flags and size of the input array:

\itemize{
\item If (flags & DCT_INVERSE) == 0, the function does a forward 1D or 2D transform. Otherwise, it is an inverse 1D or 2D transform.
\item If (flags & DCT_ROWS) != 0, the function performs a 1D transform of each row.
\item If the array is a single column or a single row, the function performs a 1D transform.
\item If none of the above is true, the function performs a 2D transform.
}

\strong{注意：}Currently dct supports even-size arrays (2, 4, 6 ...). For data analysis and approximation, you can pad the array when necessary. Also, the function performance depends very much, and not monotonically, on the array size (see getOptimalDFTSize ). In the current implementation DCT of a vector of size N is calculated via DFT of a vector of size N/2 . Thus, the optimal DCT size N1 >= N can be calculated as: size_t getOptimalDCTSize( size_t N) \{ return 2*getOptimalDFTSize((N+1)/2); \} N1 = getOptimalDCTSize(N); cv::getOptimalDFTSize int getOptimalDFTSize(int vecsize) Returns the optimal DFT size for a given vector size.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_dft}}、\code{\link{cv_getOptimalDFTSize}}、\code{\link{cv_idct}}}
\keyword{opencv}
