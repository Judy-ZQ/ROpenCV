% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getOptimalNewCameraMatrix}
\alias{cv_getOptimalNewCameraMatrix}
\title{Returns the new camera intrinsic matrix based on the free scaling parameter}
\usage{cv_getOptimalNewCameraMatrix(cameraMatrix, distCoeffs, imageSize, alpha,
    newImgSize = NULL, centerPrincipalPoint = FALSE)}
\arguments{
\item{cameraMatrix}{Input camera intrinsic matrix.}
\item{distCoeffs}{Input vector of distortion coefficients . If the vector is NULL/empty, the zero distortion coefficients are assumed.}
\item{imageSize}{Original image size.}
\item{alpha}{Free scaling parameter between 0 (when all the pixels in the undistorted image are valid) and 1 (when all the source image pixels are retained in the undistorted image). See stereoRectify for details.}
\item{newImgSize}{Image size after rectification. By default, it is set to imageSize .}
\item{centerPrincipalPoint}{Optional flag that indicates whether in the new camera intrinsic matrix the principal point should be at the image center or not. By default, the principal point is chosen to best fit a subset of the source image (determined by alpha) to the corrected image.}
}
\value{new_camera_matrix Output new camera intrinsic matrix.}
\description{Returns the new camera intrinsic matrix based on the free scaling parameter.}
\details{
The function computes and returns the optimal new camera intrinsic matrix based on the free scaling parameter. By varying this parameter, you may retrieve only sensible pixels alpha=0 , keep all the original image pixels if there is valuable information in the corners alpha=1 , or get something in between. When alpha>0 , the undistorted result is likely to have some black pixels corresponding to "virtual" pixels outside of the captured distorted image. The original camera intrinsic matrix, distortion coefficients, the computed new camera intrinsic matrix, and newImageSize should be passed to initUndistortRectifyMap to produce the maps for remap .

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
