% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_cornerEigenValsAndVecs}
\alias{cv_cornerEigenValsAndVecs}
\title{Calculates eigenvalues and eigenvectors of image blocks for corner detection}
\usage{cv_cornerEigenValsAndVecs(src, blockSize, ksize, borderType = BORDER_DEFAULT,
    dst = NULL)}
\arguments{
\item{src}{Input single-channel 8-bit or floating-point image.}
\item{blockSize}{Neighborhood size (see details below).}
\item{ksize}{Aperture parameter for the Sobel operator.}
\item{borderType}{Pixel extrapolation method. See BorderTypes. BORDER_WRAP is not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates eigenvalues and eigenvectors of image blocks for corner detection.}
\details{
For every pixel , the function cornerEigenValsAndVecs considers a blockSize blockSize neighborhood . It calculates the covariation matrix of derivatives over the neighborhood as:

where the derivatives are computed using the Sobel operator.

After that, it finds eigenvectors and eigenvalues of and stores them in the destination image as where

\itemize{
\item are the non-sorted eigenvalues of
\item are the eigenvectors corresponding to
\item are the eigenvectors corresponding to
}

The output of the function can be used for robust edge or corner detection.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_cornerMinEigenVal}}、\code{\link{cv_cornerHarris}}、\code{\link{cv_preCornerDetect}}}
\keyword{opencv}
