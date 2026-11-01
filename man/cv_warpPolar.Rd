% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_warpPolar}
\alias{cv_warpPolar}
\title{Remaps an image to polar or semilog-polar coordinates space}
\usage{cv_warpPolar(src, dsize, center, maxRadius, flags, dst = NULL)}
\arguments{
\item{src}{Source image.}
\item{dsize}{The destination image size (see description for valid options).}
\item{center}{The transformation center.}
\item{maxRadius}{The radius of the bounding circle to transform. It determines the inverse magnitude scale parameter too.}
\item{flags}{A combination of interpolation methods, InterpolationFlags + WarpPolarMode. Add WARP_POLAR_LINEAR to select linear polar mapping (default) Add WARP_POLAR_LOG to select semilog polar mapping Add WARP_INVERSE_MAP for reverse mapping.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Remaps an image to polar or semilog-polar coordinates space.}
\details{
Transform the source image using the following transformation:

where

and

Polar mapping can be linear or semi-log. Add one of WarpPolarMode to \code{flags} to specify the polar mapping mode.

Linear is the default mode.

The semilog mapping emulates the human "foveal" vision that permit very high acuity on the line of sight (central vision) in contrast to peripheral vision where acuity is minor.

\itemize{
\item if both values in \code{dsize <=0} (default), the destination image will have (almost) same area of source bounding circle:
\item if only \code{dsize.height <= 0}, the destination image area will be proportional to the bounding circle area but scaled by \code{Kx * Kx}:
\item if both values in \code{dsize > 0}, the destination image will have the given size therefore the area of the bounding circle will be scaled to \code{dsize}.
}

You can get reverse mapping adding WARP_INVERSE_MAP to \code{flags}

In addition, to calculate the original coordinate from a polar mapped coordinate :

\strong{注意：}The function can not operate in-place. To calculate magnitude and angle in degrees cartToPolar is used internally thus angles are measured from 0 to 360 with accuracy about 0.3 degrees. This function uses remap. Due to current implementation limitations the size of an input and output images should be less than 32767x32767.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_remap}}}
\keyword{opencv}
