% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_dft}
\alias{cv_dft}
\title{Performs a forward or inverse Discrete Fourier transform of a 1D or 2D floating-point array}
\usage{cv_dft(src, flags = 0, nonzeroRows = 0, dst = NULL)}
\arguments{
\item{src}{input array that could be real or complex.}
\item{flags}{transformation flags, representing a combination of the DftFlags}
\item{nonzeroRows}{when the parameter is not zero, the function assumes that only the first nonzeroRows rows of the input array (DFT_INVERSE is not set) or only the first nonzeroRows of the output array (DFT_INVERSE is set) contain non-zeros, thus, the function can handle the rest of the rows more efficiently and save some time; this technique is very useful for calculating array cross-correlation or convolution using DFT.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs a forward or inverse Discrete Fourier transform of a 1D or 2D floating-point array.}
\details{
The function cv::dft performs one of the following:

\itemize{
\item Forward the Fourier transform of a 1D vector of N elements: where and
\item Inverse the Fourier transform of a 1D vector of N elements: where
\item Forward the 2D Fourier transform of a M x N matrix:
\item Inverse the 2D Fourier transform of a M x N matrix:
}

In case of real (single-channel) data, the output spectrum of the forward Fourier transform or input spectrum of the inverse Fourier transform can be represented in a packed format called CCS (complex-conjugate-symmetrical). It was borrowed from IPL (Intel* Image Processing Library). Here is how 2D CCS spectrum looks:

In case of 1D transform of a real vector, the output looks like the first row of the matrix above.

So, the function chooses an operation mode depending on the flags and size of the input array:

\itemize{
\item If DFT_ROWS is set or the input array has a single row or single column, the function performs a 1D forward or inverse transform of each row of a matrix when DFT_ROWS is set. Otherwise, it performs a 2D transform.
\item If the input array is real and DFT_INVERSE is not set, the function performs a forward 1D or 2D transform: When DFT_COMPLEX_OUTPUT is set, the output is a complex matrix of the same size as input.
\item When DFT_COMPLEX_OUTPUT is not set, the output is a real matrix of the same size as input. In case of 2D transform, it uses the packed format as shown above. In case of a single 1D transform, it looks like the first row of the matrix above. In case of multiple 1D transforms (when using the DFT_ROWS flag), each row of the output matrix looks like the first row of the matrix above.
}

If DFT_SCALE is set, the scaling is done after the transformation.

Unlike dct, the function supports arrays of arbitrary size. But only those arrays are processed efficiently, whose sizes can be factorized in a product of small prime numbers (2, 3, and 5 in the current implementation). Such an efficient DFT size can be calculated using the getOptimalDFTSize method.

The sample below illustrates how to calculate a DFT-based convolution of two 2D real arrays:

An example on DFT-based convolution

To optimize this sample, consider the following approaches:

\itemize{
\item Since nonzeroRows != 0 is passed to the forward transform calls and since A and B are copied to the top-left corners of tempA and tempB, respectively, it is not necessary to clear the whole tempA and tempB. It is only necessary to clear the tempA.cols - A.cols ( tempB.cols - B.cols) rightmost columns of the matrices.
\item This DFT-based convolution does not have to be applied to the whole big arrays, especially if B is significantly smaller than A or vice versa. Instead, you can calculate convolution by parts. To do this, you need to split the output array C into multiple tiles. For each tile, estimate which parts of A and B are required to calculate convolution in this tile. If the tiles in C are too small, the speed will decrease a lot because of repeated work. In the ultimate case, when each tile in C is a single pixel, the algorithm becomes equivalent to the naive convolution algorithm. If the tiles are too big, the temporary arrays tempA and tempB become too big and there is also a slowdown because of bad cache locality. So, there is an optimal tile size somewhere in the middle.
\item If different tiles in C can be calculated in parallel and, thus, the convolution is done by parts, the loop can be threaded.
}

All of the above improvements have been implemented in matchTemplate and filter2D . Therefore, by using them, you can get the performance even better than with the above theoretically optimal implementation. Though, those two functions actually calculate cross-correlation, not convolution, so you need to "flip" the second convolution operand B vertically and horizontally using flip .

\strong{注意：}An example using the discrete fourier transform can be found at opencv_source_code/samples/cpp/dft.cpp (Python) An example using the dft functionality to perform Wiener deconvolution can be found at opencv_source/samples/python/deconvolution.py (Python) An example rearranging the quadrants of a Fourier image can be found at opencv_source/samples/python/dft.py

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_dct}}、\code{\link{cv_getOptimalDFTSize}}、\code{\link{cv_mulSpectrums}}、\code{\link{cv_filter2D}}、\code{\link{cv_matchTemplate}}、\code{\link{cv_flip}}、\code{\link{cv_cartToPolar}}、\code{\link{cv_magnitude}}、\code{\link{cv_phase}}}
\keyword{opencv}
