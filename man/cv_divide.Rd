% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_divide}
\alias{cv_divide}
\title{Performs per-element division of two arrays or a scalar by an array}
\usage{cv_divide(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs per-element division of two arrays or a scalar by an array.}
\details{
The function cv::divide divides one array by another:

or a scalar by an array when there is no src1 :

Different channels of multi-channel arrays are processed independently.

For integer types when src2(I) is zero, dst(I) will also be zero.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void divide(InputArray src1, InputArray src2, OutputArray dst, double scale = 1, int dtype = -1)

void divide(double scale, InputArray src2, OutputArray dst, int dtype = -1)

}

\strong{注意：}In case of floating point data there is no special defined behavior for zero src2(I) values. Regular floating-point division is used. Expect correct IEEE-754 behaviour for floating-point data (with NaN, Inf result values). Saturation is not applied when the output array has the depth CV_32S. You may even get result of an incorrect sign in the case of overflow. (Python) Be careful to difference behaviour between src1/src2 are single number and they are tuple/array. \code{divide(src,X)} means \code{divide(src,(X,X,X,X))}. \code{divide(src,(X,))} means \code{divide(src,(X,0,0,0))}.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_multiply}}、\code{\link{cv_add}}、\code{\link{cv_subtract}}}
\keyword{opencv}
