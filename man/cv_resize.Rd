% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_resize}
\alias{cv_resize}
\title{Resizes an image}
\usage{cv_resize(src, dsize, fx = 0, fy = 0, interpolation = INTER_LINEAR, dst = NULL)}
\arguments{
\item{src}{input image.}
\item{dsize}{output image size; if it equals zero (\code{None} in Python), it is computed as: Either dsize or both fx and fy must be non-zero.}
\item{fx}{scale factor along the horizontal axis; when it equals 0, it is computed as}
\item{fy}{scale factor along the vertical axis; when it equals 0, it is computed as}
\item{interpolation}{interpolation method, see InterpolationFlags}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Resizes an image.}
\details{
The function resize resizes the image src down to or up to the specified size. Note that the initial dst type or size are not taken into account. Instead, the size and type are derived from the \code{src},\code{dsize},\code{fx}, and \code{fy}. If you want to resize src so that it fits the pre-created dst, you may call the function as follows:

If you want to decimate the image by factor of 2 in each direction, you can call the function this way:

To shrink an image, it will generally look best with INTER_AREA interpolation, whereas to enlarge an image, it will generally look best with INTER_CUBIC (slow) or INTER_LINEAR (faster but still looks OK).

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_warpAffine}}、\code{\link{cv_warpPerspective}}、\code{\link{cv_remap}}}
\keyword{opencv}
