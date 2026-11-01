% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createSuperpixelLSC}
\alias{cv_createSuperpixelLSC}
\title{Class implementing the LSC (Linear Spectral Clustering) superpixels}
\usage{cv_createSuperpixelLSC(image, region_size = 10, ratio = 0.075)}
\arguments{
\item{image}{Image to segment}
\item{region_size}{Chooses an average superpixel size measured in pixels}
\item{ratio}{Chooses the enforcement of superpixel compactness factor of superpixel}
}
\value{\code{Ptr<SuperpixelLSC>} 对应的 R 对象。}
\description{Class implementing the LSC (Linear Spectral Clustering) superpixels.}
\details{
The function initializes a SuperpixelLSC object for the input image. It sets the parameters of superpixel algorithm, which are: region_size and ruler. It preallocate some buffers for future computing iterations over the given image. An example of LSC is ilustrated in the following picture. For enanched results it is recommended for color images to preprocess image with little gaussian blur with a small 3 x 3 kernel and additional conversion into CieLAB color space.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/lsc.hpp>}
}
\keyword{opencv}
