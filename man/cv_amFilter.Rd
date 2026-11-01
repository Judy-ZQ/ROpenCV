% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_amFilter}
\alias{cv_amFilter}
\title{Simple one-line Adaptive Manifold Filter call}
\usage{cv_amFilter(joint, src, sigma_s, sigma_r, adjust_outliers = FALSE, dst = NULL)}
\arguments{
\item{joint}{joint (also called as guided) image or array of images with any numbers of channels.}
\item{src}{filtering image with any numbers of channels.}
\item{sigma_s}{spatial standard deviation.}
\item{sigma_r}{color space standard deviation, it is similar to the sigma in the color space into bilateralFilter.}
\item{adjust_outliers}{optional, specify perform outliers adjust operation or not, (Eq. 9) in the original paper.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Simple one-line Adaptive Manifold Filter call.}
\details{
\strong{注意：}Joint images with CV_8U and CV_16U depth converted to images with CV_32F depth and [0; 1] color range before processing. Hence color space sigma sigma_r must be in [0; 1] range, unlike same sigmas in bilateralFilter and dtFilter functions.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\seealso{\code{\link{cv_bilateralFilter}}、\code{\link{cv_dtFilter}}、\code{\link{cv_guidedFilter}}}
\keyword{opencv}
