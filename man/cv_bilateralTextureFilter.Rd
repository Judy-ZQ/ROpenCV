% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_bilateralTextureFilter}
\alias{cv_bilateralTextureFilter}
\title{Applies the bilateral texture filter to an image}
\usage{cv_bilateralTextureFilter(src, fr = 3, numIter = 1, sigmaAlpha = -1,
    sigmaAvg = -1, dst = NULL)}
\arguments{
\item{src}{Source image whose depth is 8-bit UINT or 32-bit FLOAT}
\item{fr}{Radius of kernel to be used for filtering. It should be positive integer}
\item{numIter}{Number of iterations of algorithm, It should be positive integer}
\item{sigmaAlpha}{Controls the sharpness of the weight transition from edges to smooth/texture regions, where a bigger value means sharper transition. When the value is negative, it is automatically calculated.}
\item{sigmaAvg}{Range blur parameter for texture blurring. Larger value makes result to be more blurred. When the value is negative, it is automatically calculated as described in the paper.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies the bilateral texture filter to an image. It performs structure-preserving texture filter. For more details about this filter see [56].}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\seealso{\code{\link{cv_rollingGuidanceFilter}}、\code{\link{cv_bilateralFilter}}}
\keyword{opencv}
