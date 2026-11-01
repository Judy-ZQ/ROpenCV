% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_sort}
\alias{cv_sort}
\title{Sorts each row or each column of a matrix}
\usage{cv_sort(src, flags, dst = NULL)}
\arguments{
\item{src}{input single-channel array.}
\item{flags}{operation flags, a combination of SortFlags}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Sorts each row or each column of a matrix.}
\details{
The function cv::sort sorts each matrix row or each matrix column in ascending or descending order. So you should pass two operation flags to get desired behaviour. If you want to sort matrix rows or columns lexicographically, you can use STL std::sort generic function with the proper comparison predicate.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_sortIdx}}、\code{\link{cv_randShuffle}}}
\keyword{opencv}
