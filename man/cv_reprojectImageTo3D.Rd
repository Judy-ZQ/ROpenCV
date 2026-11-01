% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_reprojectImageTo3D}
\alias{cv_reprojectImageTo3D}
\title{Reprojects a disparity image to 3D space}
\usage{cv_reprojectImageTo3D(disparity, Q, handleMissingValues = FALSE, ddepth = -1,
    dst = NULL)}
\arguments{
\item{disparity}{Input single-channel 8-bit unsigned, 16-bit signed, 32-bit signed or 32-bit floating-point disparity image. The values of 8-bit / 16-bit signed formats are assumed to have no fractional bits. If the disparity is 16-bit signed format, as computed by StereoBM or StereoSGBM and maybe other algorithms, it should be divided by 16 (and scaled to float) before being used here.}
\item{Q}{perspective transformation matrix that can be obtained with stereoRectify.}
\item{handleMissingValues}{Indicates, whether the function should handle missing values (i.e. points where the disparity was not computed). If handleMissingValues=true, then pixels with the minimal disparity that corresponds to the outliers (see StereoMatcher::compute ) are transformed to 3D points with a very large Z value (currently set to 10000).}
\item{ddepth}{The optional output array depth. If it is -1, the output image will have CV_32F depth. ddepth can also be set to CV_16S, CV_32S or CV_32F.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Reprojects a disparity image to 3D space.}
\details{
The function transforms a single-channel disparity map to a 3-channel image representing a 3D surface. That is, for each pixel (x,y) and the corresponding disparity d=disparity(x,y) , it computes:

\strong{C++ 头文件：}\code{#include <opencv2/stereo.hpp>}
}
\seealso{\code{\link{cv_perspectiveTransform}}}
\keyword{opencv}
