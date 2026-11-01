% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_sortIdx}
\alias{cv_sortIdx}
\title{Sorts each row or each column of a matrix}
\usage{cv_sortIdx(src, flags, dst = NULL)}
\arguments{
\item{src}{input single-channel array.}
\item{flags}{operation flags that could be a combination of cv::SortFlags}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Sorts each row or each column of a matrix.}
\details{
The function cv::sortIdx sorts each matrix row or each matrix column in the ascending or descending order. So you should pass two operation flags to get desired behaviour. Instead of reordering the elements themselves, it stores the indices of sorted elements in the output array. For example:

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_sort}}、\code{\link{cv_randShuffle}}}
\keyword{opencv}
