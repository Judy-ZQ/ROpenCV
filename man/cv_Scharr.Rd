% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_Scharr}
\alias{cv_Scharr}
\title{Calculates the first x- or y- image derivative using Scharr operator}
\usage{cv_Scharr(src, ddepth, dx, dy, scale = 1, delta = 0,
    borderType = BORDER_DEFAULT, dst = NULL)}
\arguments{
\item{src}{input image.}
\item{ddepth}{output image depth, see combinations}
\item{dx}{order of the derivative x.}
\item{dy}{order of the derivative y.}
\item{scale}{optional scale factor for the computed derivative values; by default, no scaling is applied (see getDerivKernels for details).}
\item{delta}{optional delta value that is added to the results prior to storing them in dst.}
\item{borderType}{pixel extrapolation method, see BorderTypes. BORDER_WRAP is not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the first x- or y- image derivative using Scharr operator.}
\details{
The function computes the first x- or y- spatial image derivative using the Scharr operator. The call

is equivalent to

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_cartToPolar}}}
\keyword{opencv}
