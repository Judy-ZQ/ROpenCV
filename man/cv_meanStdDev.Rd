% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_meanStdDev}
\alias{cv_meanStdDev}
\title{Calculates a mean and standard deviation of array elements}
\usage{cv_meanStdDev(src, mask = NULL, mean = NULL, stddev = NULL)}
\arguments{
\item{src}{input array that should have from 1 to 4 channels so that the results can be stored in Scalar_ 's.}
\item{mask}{optional operation mask of type CV_8U, CV_8S or CV_Bool.}
\item{mean}{output parameter: calculated mean value.}
\item{stddev}{output parameter: calculated standard deviation.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates a mean and standard deviation of array elements.}
\details{
The function cv::meanStdDev calculates the mean and the standard deviation M of array elements independently for each channel and returns it via the output parameters:

When all the mask elements are 0's, the function returns mean=stddev=Scalar::all(0).

\strong{注意：}The calculated standard deviation is only the diagonal of the complete normalized covariance matrix. If the full matrix is needed, you can reshape the multi-channel array M x N to the single-channel array M*N x mtx.channels (only possible when the matrix is continuous) and then pass the matrix to calcCovarMatrix .

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_countNonZero}}、\code{\link{cv_mean}}、\code{\link{cv_norm}}、\code{\link{cv_minMaxLoc}}、\code{\link{cv_calcCovarMatrix}}}
\keyword{opencv}
