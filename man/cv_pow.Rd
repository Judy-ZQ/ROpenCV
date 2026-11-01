% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_pow}
\alias{cv_pow}
\title{Raises every array element to a power}
\usage{cv_pow(src, power, dst = NULL)}
\arguments{
\item{src}{input array.}
\item{power}{exponent of power.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Raises every array element to a power.}
\details{
The function cv::pow raises every element of the input array to power :

So, for a non-integer power exponent, the absolute values of input array elements are used. However, it is possible to get true values for negative values using some extra operations. In the example below, computing the 5th root of array src shows:

For some values of power, such as integer values, 0.5 and -0.5, specialized faster algorithms are used.

Special values (NaN, Inf) are not handled.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_sqrt}}、\code{\link{cv_exp}}、\code{\link{cv_log}}、\code{\link{cv_cartToPolar}}、\code{\link{cv_polarToCart}}}
\keyword{opencv}
