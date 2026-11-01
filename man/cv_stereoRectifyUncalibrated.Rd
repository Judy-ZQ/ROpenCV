% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_stereoRectifyUncalibrated}
\alias{cv_stereoRectifyUncalibrated}
\title{Computes a rectification transform for an uncalibrated stereo camera}
\usage{cv_stereoRectifyUncalibrated(points1, points2, F, imgSize, threshold = 5,
    H1 = NULL, H2 = NULL)}
\arguments{
\item{points1}{Array of feature points in the first image.}
\item{points2}{The corresponding points in the second image. The same formats as in findFundamentalMat are supported.}
\item{F}{Input fundamental matrix. It can be computed from the same set of point pairs using findFundamentalMat .}
\item{imgSize}{Size of the image.}
\item{threshold}{Optional threshold used to filter out the outliers. If the parameter is greater than zero, all the point pairs that do not comply with the epipolar geometry (that is, the points for which ) are rejected prior to computing the homographies. Otherwise, all the points are considered inliers.}
\item{H1}{Output rectification homography matrix for the first image.}
\item{H2}{Output rectification homography matrix for the second image.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{Computes a rectification transform for an uncalibrated stereo camera.}
\details{
The function computes the rectification transformations without knowing intrinsic parameters of the cameras and their relative position in the space, which explains the suffix "uncalibrated". Another related difference from stereoRectify is that the function outputs not the rectification transformations in the object (3D) space, but the planar perspective transformations encoded by the homography matrices H1 and H2 . The function implements the algorithm [119] .

\strong{注意：}While the algorithm does not need to know the intrinsic parameters of the cameras, it heavily depends on the epipolar geometry. Therefore, if the camera lenses have a significant distortion, it would be better to correct it before computing the fundamental matrix and calling this function. For example, distortion coefficients can be estimated for each head of stereo camera separately by using calibrateCamera . Then, the images can be corrected using undistort , or just the point coordinates can be corrected with undistortPoints .

\strong{C++ 头文件：}\code{#include <opencv2/stereo.hpp>}
}
\keyword{opencv}
