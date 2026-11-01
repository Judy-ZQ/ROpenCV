% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_filterSpeckles}
\alias{cv_filterSpeckles}
\title{Filters off small noise blobs (speckles) in the disparity map}
\usage{cv_filterSpeckles(img = NULL, newVal, maxSpeckleSize, maxDiff, buf = NULL)}
\arguments{
\item{img}{The input 16-bit signed disparity image}
\item{newVal}{The disparity value used to paint-off the speckles}
\item{maxSpeckleSize}{The maximum speckle size to consider it a speckle. Larger blobs are not affected by the algorithm}
\item{maxDiff}{Maximum difference between neighbor disparity pixels to put them into the same blob. Note that since StereoBM, StereoSGBM and may be other algorithms return a fixed-point disparity map, where disparity values are multiplied by 16, this scale factor should be taken into account when specifying this parameter value.}
\item{buf}{The optional temporary buffer to avoid memory allocation within the function.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Filters off small noise blobs (speckles) in the disparity map.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/stereo.hpp>}
}
\keyword{opencv}
