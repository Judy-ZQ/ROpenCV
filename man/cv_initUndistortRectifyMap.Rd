% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_initUndistortRectifyMap}
\alias{cv_initUndistortRectifyMap}
\title{Computes the undistortion and rectification transformation map}
\usage{cv_initUndistortRectifyMap(cameraMatrix, distCoeffs, R, newCameraMatrix,
    size, m1type, map1 = NULL, map2 = NULL)}
\arguments{
\item{cameraMatrix}{Input camera matrix .}
\item{distCoeffs}{Input vector of distortion coefficients of 4, 5, 8, 12 or 14 elements. If the vector is NULL/empty, the zero distortion coefficients are assumed.}
\item{R}{Optional rectification transformation in the object space (3x3 matrix). R1 or R2 , computed by stereoRectify can be passed here. If the matrix is empty, the identity transformation is assumed. In initUndistortRectifyMap R assumed to be an identity matrix.}
\item{newCameraMatrix}{New camera matrix .}
\item{size}{Undistorted image size.}
\item{m1type}{Type of the first output map that can be CV_32FC1, CV_32FC2 or CV_16SC2, see convertMaps}
\item{map1}{The first output map.}
\item{map2}{The second output map.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes the undistortion and rectification transformation map.}
\details{
The function computes the joint undistortion and rectification transformation and represents the result in the form of maps for remap. The undistorted image looks like original, as if it is captured with a camera using the camera matrix =newCameraMatrix and zero distortion. In case of a monocular camera, newCameraMatrix is usually equal to cameraMatrix, or it can be computed by getOptimalNewCameraMatrix for a better control over scaling. In case of a stereo camera, newCameraMatrix is normally set to P1 or P2 computed by stereoRectify .

Also, this new camera is oriented differently in the coordinate space, according to R. That, for example, helps to align two heads of a stereo camera so that the epipolar lines on both images become horizontal and have the same y- coordinate (in case of a horizontally aligned stereo camera).

The function actually builds the maps for the inverse mapping algorithm that is used by remap. That is, for each pixel in the destination (corrected and rectified) image, the function computes the corresponding coordinates in the source image (that is, in the original image from camera). The following process is applied:

where are the distortion coefficients.

In case of a stereo camera, this function is called twice: once for each camera head, after stereoRectify, which in its turn is called after stereoCalibrate. But if the stereo camera was not calibrated, it is still possible to compute the rectification transformations directly from the fundamental matrix using stereoRectifyUncalibrated. For each camera, the function computes homography H as the rectification transformation in a pixel domain, not a rotation matrix R in 3D space. R can be computed from H as

where cameraMatrix can be chosen arbitrarily.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
