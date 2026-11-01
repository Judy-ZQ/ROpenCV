% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_dtFilter}
\alias{cv_dtFilter}
\title{Simple one-line Domain Transform filter call}
\usage{cv_dtFilter(guide, src, sigmaSpatial, sigmaColor, mode = DTF_NC,
    numIters = 3, dst = NULL)}
\arguments{
\item{guide}{guided image (also called as joint image) with unsigned 8-bit or floating-point 32-bit depth and up to 4 channels.}
\item{src}{filtering image with unsigned 8-bit or floating-point 32-bit depth and up to 4 channels.}
\item{sigmaSpatial}{parameter in the original article, it's similar to the sigma in the coordinate space into bilateralFilter.}
\item{sigmaColor}{parameter in the original article, it's similar to the sigma in the color space into bilateralFilter.}
\item{mode}{one form three modes DTF_NC, DTF_RF and DTF_IC which corresponds to three modes for filtering 2D signals in the article.}
\item{numIters}{optional number of iterations used for filtering, 3 is quite enough.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Simple one-line Domain Transform filter call. If you have multiple images to filter with the same guided image then use DTFilter interface to avoid extra computations on initialization stage.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\seealso{\code{\link{cv_bilateralFilter}}、\code{\link{cv_guidedFilter}}、\code{\link{cv_amFilter}}}
\keyword{opencv}
