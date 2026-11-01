% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_remap}
\alias{cv_remap}
\title{Applies a generic geometrical transformation to an image}
\usage{cv_remap(src, map1, map2, interpolation, borderMode = BORDER_CONSTANT,
    borderValue = NULL, dst = NULL)}
\arguments{
\item{src}{Source image.}
\item{map1}{The first map of either (x,y) points or just x values having the type CV_16SC2 , CV_32FC1, or CV_32FC2. See convertMaps for details on converting a floating point representation to fixed-point for speed.}
\item{map2}{The second map of y values having the type CV_16UC1, CV_32FC1, or none (empty map if map1 is (x,y) points), respectively.}
\item{interpolation}{Interpolation method (see InterpolationFlags). The methods INTER_AREA INTER_LINEAR_EXACT and INTER_NEAREST_EXACT are not supported by this function. The extra flag WARP_RELATIVE_MAP can be ORed to the interpolation method (e.g. INTER_LINEAR | WARP_RELATIVE_MAP)}
\item{borderMode}{Pixel extrapolation method (see BorderTypes). When borderMode=BORDER_TRANSPARENT, it means that the pixels in the destination image that corresponds to the "outliers" in the source image are not modified by the function.}
\item{borderValue}{Value used in case of a constant border. By default, it is 0.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies a generic geometrical transformation to an image.}
\details{
The function remap transforms the source image using the specified map:

with the WARP_RELATIVE_MAP flag :

where values of pixels with non-integer coordinates are computed using one of available interpolation methods. and can be encoded as separate floating-point maps in and respectively, or interleaved floating-point maps of in , or fixed-point maps created by using convertMaps. The reason you might want to convert from floating to fixed-point representations of a map is that they can yield much faster (2x) remapping operations. In the converted case, contains pairs (cvFloor(x), cvFloor(y)) and contains indices in a table of interpolation coefficients.

This function cannot operate in-place.

\strong{注意：}Due to current implementation limitations the size of an input and output images should be less than 32767x32767.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
