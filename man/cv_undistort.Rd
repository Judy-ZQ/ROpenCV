% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_undistort}
\alias{cv_undistort}
\title{Transforms an image to compensate for lens distortion}
\usage{cv_undistort(src, cameraMatrix, distCoeffs, newCameraMatrix = NULL, dst = NULL)}
\arguments{
\item{src}{Input (distorted) image.}
\item{cameraMatrix}{Input camera matrix .}
\item{distCoeffs}{Input vector of distortion coefficients of 4, 5, 8, 12 or 14 elements. If the vector is NULL/empty, the zero distortion coefficients are assumed.}
\item{newCameraMatrix}{Camera matrix of the distorted image. By default, it is the same as cameraMatrix but you may additionally scale and shift the result by using a different matrix.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Transforms an image to compensate for lens distortion.}
\details{
The function transforms an image to compensate radial and tangential lens distortion.

The function is simply a combination of initUndistortRectifyMap (with unity R ) and remap (with bilinear interpolation). See the former function for details of the transformation being performed.

Those pixels in the destination image, for which there is no correspondent pixels in the source image, are filled with zeros (black color).

A particular subset of the source image that will be visible in the corrected image can be regulated by newCameraMatrix. You can use getOptimalNewCameraMatrix to compute the appropriate newCameraMatrix depending on your requirements.

The camera matrix and the distortion parameters can be determined using calibrateCamera. If the resolution of images is different from the resolution used at the calibration stage, and need to be scaled accordingly, while the distortion coefficients remain the same.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
