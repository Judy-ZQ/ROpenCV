% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_cornerHarris}
\alias{cv_cornerHarris}
\title{Harris corner detector}
\usage{cv_cornerHarris(src, blockSize, ksize, k, borderType = BORDER_DEFAULT,
    dst = NULL)}
\arguments{
\item{src}{Input single-channel 8-bit or floating-point image.}
\item{blockSize}{Neighborhood size (see the details on cornerEigenValsAndVecs ).}
\item{ksize}{Aperture parameter for the Sobel operator.}
\item{k}{Harris detector free parameter. See the formula above.}
\item{borderType}{Pixel extrapolation method. See BorderTypes. BORDER_WRAP is not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Harris corner detector.}
\details{
The function runs the Harris corner detector on the image. Similarly to cornerMinEigenVal and cornerEigenValsAndVecs , for each pixel it calculates a gradient covariance matrix over a neighborhood. Then, it computes the following characteristic:

Corners in the image can be found as the local maxima of this response map.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
