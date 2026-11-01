% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_warpAffine}
\alias{cv_warpAffine}
\title{Applies an affine transformation to an image}
\usage{cv_warpAffine(src, M, dsize, flags = INTER_LINEAR,
    borderMode = BORDER_CONSTANT, borderValue = NULL, dst = NULL)}
\arguments{
\item{src}{input image.}
\item{M}{transformation matrix.}
\item{dsize}{size of the output image.}
\item{flags}{combination of interpolation methods (see InterpolationFlags) and the optional flag WARP_INVERSE_MAP that means that M is the inverse transformation .}
\item{borderMode}{pixel extrapolation method (see BorderTypes); when borderMode=BORDER_TRANSPARENT, it means that the pixels in the destination image corresponding to the "outliers" in the source image are not modified by the function.}
\item{borderValue}{value used in case of a constant border; by default, it is 0.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies an affine transformation to an image.}
\details{
The function warpAffine transforms the source image using the specified matrix:

when the flag WARP_INVERSE_MAP is set. Otherwise, the transformation is first inverted with invertAffineTransform and then put in the formula above instead of M. The function cannot operate in-place.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_warpPerspective}}、\code{\link{cv_resize}}、\code{\link{cv_remap}}、\code{\link{cv_getRectSubPix}}、\code{\link{cv_transform}}}
\keyword{opencv}
