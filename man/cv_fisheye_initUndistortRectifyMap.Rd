% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fisheye_initUndistortRectifyMap}
\alias{cv_fisheye_initUndistortRectifyMap}
\title{Computes undistortion and rectification maps for image transform by cv::remap }
\usage{cv_fisheye_initUndistortRectifyMap(K, D, R, P, size, m1type, map1 = NULL,
    map2 = NULL)}
\arguments{
\item{K}{Camera intrinsic matrix .}
\item{D}{Input vector of distortion coefficients .}
\item{R}{Rectification transformation in the object space: 3x3 1-channel, or vector: 3x1/1x3 1-channel or 1x1 3-channel}
\item{P}{New camera intrinsic matrix (3x3) or new projection matrix (3x4)}
\item{size}{Undistorted image size.}
\item{m1type}{Type of the first output map that can be CV_32FC1 or CV_16SC2 . See convertMaps for details.}
\item{map1}{The first output map.}
\item{map2}{The second output map.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes undistortion and rectification maps for image transform by cv::remap . If D is empty zero distortion is used, if R or P is empty identity matrixes are used.}
\keyword{opencv}
