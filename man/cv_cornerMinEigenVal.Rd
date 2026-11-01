% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_cornerMinEigenVal}
\alias{cv_cornerMinEigenVal}
\title{Calculates the minimal eigenvalue of gradient matrices for corner detection}
\usage{cv_cornerMinEigenVal(src, blockSize, ksize = 3, borderType = BORDER_DEFAULT,
    dst = NULL)}
\arguments{
\item{src}{Input single-channel 8-bit or floating-point image.}
\item{blockSize}{Neighborhood size (see the details on cornerEigenValsAndVecs ).}
\item{ksize}{Aperture parameter for the Sobel operator.}
\item{borderType}{Pixel extrapolation method. See BorderTypes. BORDER_WRAP is not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the minimal eigenvalue of gradient matrices for corner detection.}
\details{
The function is similar to cornerEigenValsAndVecs but it calculates and stores only the minimal eigenvalue of the covariance matrix of derivatives, that is, in terms of the formulae in the cornerEigenValsAndVecs description.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
