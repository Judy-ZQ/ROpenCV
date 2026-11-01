% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_compare}
\alias{cv_compare}
\title{Performs the per-element comparison of two arrays or an array and scalar value}
\usage{cv_compare(src1, src2, cmpop, dst = NULL)}
\arguments{
\item{src1}{first input array or a scalar; when it is an array, it must have a single channel.}
\item{src2}{second input array or a scalar; when it is an array, it must have a single channel.}
\item{cmpop}{a flag, that specifies correspondence between the arrays (cv::CmpTypes)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs the per-element comparison of two arrays or an array and scalar value.}
\details{
The function compares: Elements of two arrays when src1 and src2 have the same size:

Elements of src1 with a scalar src2 when src2 is constructed from Scalar or has a single element:

src1 with elements of src2 when src1 is constructed from Scalar or has a single element:

When the comparison result is true, the corresponding element of output array is set to 255. The comparison operations can be replaced with the equivalent matrix expressions:

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_checkRange}}、\code{\link{cv_min}}、\code{\link{cv_max}}、\code{\link{cv_threshold}}}
\keyword{opencv}
