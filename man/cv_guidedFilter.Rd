% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_guidedFilter}
\alias{cv_guidedFilter}
\title{Simple one-line (Fast) Guided Filter call}
\usage{cv_guidedFilter(guide, src, radius, eps, dDepth = -1, scale = 1, dst = NULL)}
\arguments{
\item{guide}{guided image (or array of images) with up to 3 channels, if it have more then 3 channels then only first 3 channels will be used.}
\item{src}{filtering image with any numbers of channels.}
\item{radius}{radius of Guided Filter.}
\item{eps}{regularization term of Guided Filter. is similar to the sigma in the color space into bilateralFilter.}
\item{dDepth}{optional depth of the output image.}
\item{scale}{subsample factor of Fast Guided Filter, use a scale less than 1 to speeds up computation with almost no visible degradation. (e.g. scale==0.5 shrinks the image by 2x inside the filter)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Simple one-line (Fast) Guided Filter call.}
\details{
If you have multiple images to filter with the same guided image then use GuidedFilter interface to avoid extra computations on initialization stage.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\seealso{\code{\link{cv_bilateralFilter}}、\code{\link{cv_dtFilter}}、\code{\link{cv_amFilter}}}
\keyword{opencv}
