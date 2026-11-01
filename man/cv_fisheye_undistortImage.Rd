% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fisheye_undistortImage}
\alias{cv_fisheye_undistortImage}
\title{Transforms an image to compensate for fisheye lens distortion}
\usage{cv_fisheye_undistortImage(distorted, K, D, Knew = NULL, new_size = NULL,
    dst = NULL)}
\arguments{
\item{distorted}{image with fisheye lens distortion.}
\item{K}{Camera intrinsic matrix .}
\item{D}{Input vector of distortion coefficients .}
\item{Knew}{Camera intrinsic matrix of the distorted image. By default, it is the identity matrix but you may additionally scale and shift the result by using a different matrix.}
\item{new_size}{the new size}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Transforms an image to compensate for fisheye lens distortion.}
\details{
The function transforms an image to compensate radial and tangential lens distortion.

The function is simply a combination of fisheye::initUndistortRectifyMap (with unity R ) and remap (with bilinear interpolation). See the former function for details of the transformation being performed.

See below the results of undistortImage.

\itemize{
\item a) result of undistort of perspective camera model (all possible coefficients (k_1, k_2, k_3, k_4, k_5, k_6) of distortion were optimized under calibration) b) result of fisheye::undistortImage of fisheye camera model (all possible coefficients (k_1, k_2, k_3, k_4) of fisheye distortion were optimized under calibration)
\item c) original image was captured with fisheye lens
}

Pictures a) and b) almost the same. But if we consider points of image located far from the center of image, we can notice that on image a) these points are distorted.
}
\keyword{opencv}
