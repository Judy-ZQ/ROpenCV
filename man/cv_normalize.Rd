% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_normalize}
\alias{cv_normalize}
\title{Normalizes the norm or value range of an array}
\usage{cv_normalize(src, dst = NULL, alpha = 1, beta = 0, norm_type = NORM_L2,
    dtype = -1, mask = NULL)}
\arguments{
\item{src}{input array.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{alpha}{norm value to normalize to or the lower range boundary in case of the range normalization.}
\item{beta}{upper range boundary in case of the range normalization; it is not used for the norm normalization.}
\item{norm_type}{normalization type (see cv::NormTypes).}
\item{dtype}{when negative, the output array has the same type as src; otherwise, it has the same number of channels as src and the depth =CV_MAT_DEPTH(dtype).}
\item{mask}{optional operation mask of type CV_8U, CV_8S or CV_Bool.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Normalizes the norm or value range of an array.}
\details{
The function cv::normalize normalizes scale and shift the input array elements so that

(where p=Inf, 1 or 2) when normType=NORM_INF, NORM_L1, or NORM_L2, respectively; or so that

when normType=NORM_MINMAX (for dense arrays only). The optional mask specifies a sub-array to be normalized. This means that the norm or min-n-max are calculated over the sub-array, and then this sub-array is modified to be normalized. If you want to only use the mask to calculate the norm or min-max but modify the whole array, you can use norm and Mat::convertTo.

In case of sparse matrices, only the non-zero values are analyzed and transformed. Because of this, the range transformation for sparse matrices is not allowed since it can shift the zero level.

Possible usage with some positive example data:

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_norm}}}
\keyword{opencv}
