% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_min}
\alias{cv_min}
\title{Calculates per-element minimum of two arrays or an array and a scalar}
\usage{cv_min(src1, src2, dst = NULL)}
\arguments{
\item{src1}{first input array.}
\item{src2}{second input array of the same size and type as src1.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates per-element minimum of two arrays or an array and a scalar.}
\details{
The function cv::min calculates the per-element minimum of two arrays:

or array and a scalar:

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_max}}、\code{\link{cv_compare}}、\code{\link{cv_inRange}}、\code{\link{cv_minMaxLoc}}}
\keyword{opencv}
