% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_floodFill}
\alias{cv_floodFill}
\title{Fills a connected component with the given color}
\usage{cv_floodFill(image = NULL, mask = NULL, seedPoint, newVal, loDiff = NULL,
    upDiff = NULL, flags = 4)}
\arguments{
\item{image}{Input/output 1- or 3-channel, 8-bit, or floating-point image. It is modified by the function unless the FLOODFILL_MASK_ONLY flag is set in the second variant of the function. See the details below.}
\item{mask}{Operation mask that should be a single-channel 8-bit image, 2 pixels wider and 2 pixels taller than image. If an empty Mat is passed it will be created automatically. Since this is both an input and output parameter, you must take responsibility of initializing it. Flood-filling cannot go across non-zero pixels in the input mask. For example, an edge detector output can be used as a mask to stop filling at edges. On output, pixels in the mask corresponding to filled pixels in the image are set to 1 or to the specified value in flags as described below. Additionally, the function fills the border of the mask with ones to simplify internal processing. It is therefore possible to use the same mask in multiple calls to the function to make sure the filled areas do not overlap.}
\item{seedPoint}{Starting point.}
\item{newVal}{New value of the repainted domain pixels.}
\item{loDiff}{Maximal lower brightness/color difference between the currently observed pixel and one of its neighbors belonging to the component, or a seed pixel being added to the component.}
\item{upDiff}{Maximal upper brightness/color difference between the currently observed pixel and one of its neighbors belonging to the component, or a seed pixel being added to the component.}
\item{flags}{Operation flags. The first 8 bits contain a connectivity value. The default value of 4 means that only the four nearest neighbor pixels (those that share an edge) are considered. A connectivity value of 8 means that the eight nearest neighbor pixels (those that share a corner) will be considered. The next 8 bits (8-16) contain a value between 1 and 255 with which to fill the mask (the default value is 1). For example, 4 | ( 255 << 8 ) will consider 4 nearest neighbours and fill the mask with a value of 255. The following additional options occupy higher bits and therefore may be further combined with the connectivity and mask fill values using bit-wise or (|), see FloodFillFlags.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Fills a connected component with the given color.}
\details{
The function cv::floodFill fills a connected component starting from the seed point with the specified color. The connectivity is determined by the color/brightness closeness of the neighbor pixels. The pixel at is considered to belong to the repainted domain if:

\itemize{
\item in case of a grayscale image and floating range
\item in case of a grayscale image and fixed range
\item in case of a color image and floating range and
\item in case of a color image and fixed range and
}

where is the value of one of pixel neighbors that is already known to belong to the component. That is, to be added to the connected component, a color/brightness of the pixel should be close enough to:

\itemize{
\item Color/brightness of one of its neighbors that already belong to the connected component in case of a floating range.
\item Color/brightness of the seed point in case of a fixed range.
}

Use these functions to either mark a connected component with the specified color in-place, or build a mask and then extract the contour, or copy the region to another image, and so on.

\strong{注意：}Since the mask is larger than the filled image, a pixel in image corresponds to the pixel in the mask .

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_findContours}}}
\keyword{opencv}
