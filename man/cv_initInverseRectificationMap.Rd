% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_initInverseRectificationMap}
\alias{cv_initInverseRectificationMap}
\title{Computes the projection and inverse-rectification transformation map}
\usage{cv_initInverseRectificationMap(cameraMatrix, distCoeffs, R, newCameraMatrix,
    size, m1type, map1 = NULL, map2 = NULL)}
\arguments{
\item{cameraMatrix}{Input camera matrix .}
\item{distCoeffs}{Input vector of distortion coefficients of 4, 5, 8, 12 or 14 elements. If the vector is NULL/empty, the zero distortion coefficients are assumed.}
\item{R}{Optional rectification transformation in the object space (3x3 matrix). R1 or R2, computed by stereoRectify can be passed here. If the matrix is empty, the identity transformation is assumed.}
\item{newCameraMatrix}{New camera matrix .}
\item{size}{Distorted image size.}
\item{m1type}{Type of the first output map. Can be CV_32FC1, CV_32FC2 or CV_16SC2, see convertMaps}
\item{map1}{The first output map for remap.}
\item{map2}{The second output map for remap.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes the projection and inverse-rectification transformation map. In essense, this is the inverse of initUndistortRectifyMap to accomodate stereo-rectification of projectors ('inverse-cameras') in projector-camera pairs.}
\details{
The function computes the joint projection and inverse rectification transformation and represents the result in the form of maps for remap. The projected image looks like a distorted version of the original which, once projected by a projector, should visually match the original. In case of a monocular camera, newCameraMatrix is usually equal to cameraMatrix, or it can be computed by getOptimalNewCameraMatrix for a better control over scaling. In case of a projector-camera pair, newCameraMatrix is normally set to P1 or P2 computed by stereoRectify .

The projector is oriented differently in the coordinate space, according to R. In case of projector-camera pairs, this helps align the projector (in the same manner as initUndistortRectifyMap for the camera) to create a stereo-rectified pair. This allows epipolar lines on both images to become horizontal and have the same y-coordinate (in case of a horizontally aligned projector-camera pair).

The function builds the maps for the inverse mapping algorithm that is used by remap. That is, for each pixel in the destination (projected and inverse-rectified) image, the function computes the corresponding coordinates in the source image (that is, in the original digital image). The following process is applied:

where are the distortion coefficients vector distCoeffs.

In case of a stereo-rectified projector-camera pair, this function is called for the projector while initUndistortRectifyMap is called for the camera head. This is done after stereoRectify, which in turn is called after stereoCalibrate. If the projector-camera pair is not calibrated, it is still possible to compute the rectification transformations directly from the fundamental matrix using stereoRectifyUncalibrated. For the projector and camera, the function computes homography H as the rectification transformation in a pixel domain, not a rotation matrix R in 3D space. R can be computed from H as

where cameraMatrix can be chosen arbitrarily.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
