% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_ximgproc_edgePreservingFilter}
\alias{cv_ximgproc_edgePreservingFilter}
\title{Smoothes an image using the Edge-Preserving filter}
\usage{cv_ximgproc_edgePreservingFilter(src, d, threshold, dst = NULL)}
\arguments{
\item{src}{Source 8-bit 3-channel image.}
\item{d}{Diameter of each pixel neighborhood that is used during filtering. Must be greater or equal 3.}
\item{threshold}{Threshold, which distinguishes between noise, outliers, and data.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Smoothes an image using the Edge-Preserving filter.}
\details{
The function smoothes Gaussian noise as well as salt & pepper noise. For more details about this implementation, please see [ReiWoe18] Reich, S. and Wörgötter, F. and Dellen, B. (2018). A Real-Time Edge-Preserving Denoising Filter. Proceedings of the 13th International Joint Conference on Computer Vision, Imaging and Computer Graphics Theory and Applications (VISIGRAPP): Visapp, 85-94, 4. DOI: 10.5220/0006509000850094.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edgepreserving_filter.hpp>}
}
\keyword{opencv}
