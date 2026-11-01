% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_log}
\alias{cv_log}
\title{Calculates the natural logarithm of every array element}
\usage{cv_log(src, dst = NULL)}
\arguments{
\item{src}{input array.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the natural logarithm of every array element.}
\details{
The function cv::log calculates the natural logarithm of every element of the input array:

Output on zero, negative and special (NaN, Inf) values is undefined.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_exp}}、\code{\link{cv_cartToPolar}}、\code{\link{cv_polarToCart}}、\code{\link{cv_phase}}、\code{\link{cv_pow}}、\code{\link{cv_sqrt}}、\code{\link{cv_magnitude}}}
\keyword{opencv}
