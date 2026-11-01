% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_phaseCorrelate}
\alias{cv_phaseCorrelate}
\title{The function is used to detect translational shifts that occur between two images}
\usage{cv_phaseCorrelate(src1, src2, window = NULL)}
\arguments{
\item{src1}{Source floating point array (CV_32FC1 or CV_64FC1)}
\item{src2}{Source floating point array (CV_32FC1 or CV_64FC1)}
\item{window}{Floating point array with windowing coefficients to reduce edge effects (optional).}
}
\value{detected phase shift (sub-pixel) between the two arrays.}
\description{The function is used to detect translational shifts that occur between two images.}
\details{
The operation takes advantage of the Fourier shift theorem for detecting the translational shift in the frequency domain. It can be used for fast image registration as well as motion estimation. For more information please see http://en.wikipedia.org/wiki/Phase_correlation

Calculates the cross-power spectrum of two supplied source arrays. The arrays are padded if needed with getOptimalDFTSize.

The function performs the following equations:

\itemize{
\item First it applies a Hanning window (see http://en.wikipedia.org/wiki/Hann_function) to each image to remove possible edge effects. This window is cached until the array size changes to speed up processing time.
\item Next it computes the forward DFTs of each source array: where is the forward DFT.
\item It then computes the cross-power spectrum of each frequency domain array:
\item Next the cross-correlation is converted back into the time domain via the inverse DFT:
\item Finally, it computes the peak location and computes a 5x5 weighted centroid around the peak to achieve sub-pixel accuracy.
\item If non-zero, the response parameter is computed as the sum of the elements of r within the 5x5 centroid around the peak location. It is normalized to a maximum of 1 (meaning there is a single peak) and will be smaller when there are multiple peaks.
}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_dft}}、\code{\link{cv_getOptimalDFTSize}}、\code{\link{cv_idft}}、\code{\link{cv_mulSpectrums}}、\code{\link{cv_createHanningWindow}}}
\keyword{opencv}
