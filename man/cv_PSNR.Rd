% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_PSNR}
\alias{cv_PSNR}
\title{Computes the Peak Signal-to-Noise Ratio (PSNR) image quality metric}
\usage{cv_PSNR(src1, src2, R = 255)}
\arguments{
\item{src1}{first input array.}
\item{src2}{second input array of the same size as src1.}
\item{R}{the maximum pixel value (255 by default)}
}
\value{数值标量。}
\description{Computes the Peak Signal-to-Noise Ratio (PSNR) image quality metric.}
\details{
This function calculates the Peak Signal-to-Noise Ratio (PSNR) image quality metric in decibels (dB), between two input arrays src1 and src2. The arrays must have the same type.

The PSNR is calculated as follows:

where R is the maximum integer value of depth (e.g. 255 in the case of CV_8U data) and MSE is the mean squared error between the two arrays.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
