% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_stereoRectify}
\alias{cv_stereoRectify}
\title{Computes rectification transforms for each head of a calibrated stereo camera}
\usage{cv_stereoRectify(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2,
    imageSize, R, T, flags = STEREO_ZERO_DISPARITY, alpha = -1,
    newImageSize = NULL, R1 = NULL, R2 = NULL, P1 = NULL, P2 = NULL, Q = NULL)}
\arguments{
\item{cameraMatrix1}{First camera intrinsic matrix.}
\item{distCoeffs1}{First camera distortion parameters.}
\item{cameraMatrix2}{Second camera intrinsic matrix.}
\item{distCoeffs2}{Second camera distortion parameters.}
\item{imageSize}{Size of the image used for stereo calibration.}
\item{R}{Rotation matrix from the coordinate system of the first camera to the second camera, see stereoCalibrate.}
\item{T}{Translation vector from the coordinate system of the first camera to the second camera, see stereoCalibrate.}
\item{flags}{Operation flags that may be zero or STEREO_ZERO_DISPARITY . If the flag is set, the function makes the principal points of each camera have the same pixel coordinates in the rectified views. And if the flag is not set, the function may still shift the images in the horizontal or vertical direction (depending on the orientation of epipolar lines) to maximize the useful image area.}
\item{alpha}{Free scaling parameter. If it is -1 or absent, the function performs the default scaling. Otherwise, the parameter should be between 0 and 1. alpha=0 means that the rectified images are zoomed and shifted so that only valid pixels are visible (no black areas after rectification). alpha=1 means that the rectified image is decimated and shifted so that all the pixels from the original images from the cameras are retained in the rectified images (no source image pixels are lost). Any intermediate value yields an intermediate result between those two extreme cases.}
\item{newImageSize}{New image resolution after rectification. The same size should be passed to initUndistortRectifyMap (see the stereo_calib.cpp sample in OpenCV samples directory). When (0,0) is passed (default), it is set to the original imageSize . Setting it to a larger value can help you preserve details in the original image, especially when there is a big radial distortion.}
\item{R1}{Output 3x3 rectification transform (rotation matrix) for the first camera. This matrix brings points given in the unrectified first camera's coordinate system to points in the rectified first camera's coordinate system. In more technical terms, it performs a change of basis from the unrectified first camera's coordinate system to the rectified first camera's coordinate system.}
\item{R2}{Output 3x3 rectification transform (rotation matrix) for the second camera. This matrix brings points given in the unrectified second camera's coordinate system to points in the rectified second camera's coordinate system. In more technical terms, it performs a change of basis from the unrectified second camera's coordinate system to the rectified second camera's coordinate system.}
\item{P1}{Output 3x4 projection matrix in the new (rectified) coordinate systems for the first camera, i.e. it projects points given in the rectified first camera coordinate system into the rectified first camera's image.}
\item{P2}{Output 3x4 projection matrix in the new (rectified) coordinate systems for the second camera, i.e. it projects points given in the rectified first camera coordinate system into the rectified second camera's image.}
\item{Q}{Output disparity-to-depth mapping matrix (see reprojectImageTo3D).}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes rectification transforms for each head of a calibrated stereo camera.}
\details{
The function computes the rotation matrices for each camera that (virtually) make both camera image planes the same plane. Consequently, this makes all the epipolar lines parallel and thus simplifies the dense stereo correspondence problem. The function takes the matrices computed by stereoCalibrate as input. As output, it provides two rotation matrices and also two projection matrices in the new coordinates. The function distinguishes the following two cases:

\itemize{
\item Horizontal stereo: the first and the second camera views are shifted relative to each other mainly along the x-axis (with possible small vertical shift). In the rectified images, the corresponding epipolar lines in the left and right cameras are horizontal and have the same y-coordinate. P1 and P2 look like:
}

where is a horizontal shift between the cameras and if STEREO_ZERO_DISPARITY is set.

\itemize{
\item Vertical stereo: the first and the second camera views are shifted relative to each other mainly in the vertical direction (and probably a bit in the horizontal direction too). The epipolar lines in the rectified images are vertical and have the same x-coordinate. P1 and P2 look like:
}

where is a vertical shift between the cameras and if STEREO_ZERO_DISPARITY is set.

As you can see, the first three columns of P1 and P2 will effectively be the new "rectified" camera matrices. The matrices, together with R1 and R2 , can then be passed to initUndistortRectifyMap to initialize the rectification map for each camera.

See below the screenshot from the stereo_calib.cpp sample. Some red horizontal lines pass through the corresponding image regions. This means that the images are well rectified, which is what most stereo correspondence algorithms rely on. The green rectangles are roi1 and roi2 . You see that their interiors are all valid pixels.

\strong{C++ 头文件：}\code{#include <opencv2/stereo.hpp>}
}
\keyword{opencv}
