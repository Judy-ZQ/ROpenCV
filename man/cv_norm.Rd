% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_norm}
\alias{cv_norm}
\title{Calculates the absolute norm of an array}
\usage{cv_norm(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{数值标量。}
\description{Calculates the absolute norm of an array.}
\details{
This version of norm calculates the absolute norm of src1. The type of norm to calculate is specified using NormTypes.

As example for one array consider the function . The and norm for the sample value is calculated as follows

and for the calculation is

The following graphic shows all values for the three norm functions and . It is notable that the norm forms the upper and the norm forms the lower border for the example function .

When the mask parameter is specified and it is not empty, the norm is

If normType is not specified, NORM_L2 is used. calculated only over the region specified by the mask.

Multi-channel input arrays are treated as single-channel arrays, that is, the results for all channels are combined.

Hamming norms can only be calculated with CV_8U depth arrays.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

double norm(InputArray src1, int normType = NORM_L2, InputArray mask = noArray())

double norm(InputArray src1, InputArray src2, int normType = NORM_L2, InputArray mask = noArray())

}

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
