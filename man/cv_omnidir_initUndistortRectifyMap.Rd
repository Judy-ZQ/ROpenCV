% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_omnidir_initUndistortRectifyMap}
\alias{cv_omnidir_initUndistortRectifyMap}
\title{Computes undistortion and rectification maps for omnidirectional camera image transform by a rotation R}
\usage{cv_omnidir_initUndistortRectifyMap(K, D, xi, R, P, size, m1type, flags,
    map1 = NULL, map2 = NULL)}
\arguments{
\item{K}{Camera matrix , with depth CV_32F or CV_64F}
\item{D}{Input vector of distortion coefficients , with depth CV_32F or CV_64F}
\item{xi}{The parameter xi for CMei's model}
\item{R}{Rotation transform between the original and object space : 3x3 1-channel, or vector: 3x1/1x3, with depth CV_32F or CV_64F}
\item{P}{New camera matrix (3x3) or new projection matrix (3x4)}
\item{size}{Undistorted image size.}
\item{m1type}{Type of the first output map that can be CV_32FC1 or CV_16SC2 . See convertMaps for details.}
\item{flags}{Flags indicates the rectification type, RECTIFY_PERSPECTIVE, RECTIFY_CYLINDRICAL, RECTIFY_LONGLATI and RECTIFY_STEREOGRAPHIC are supported.}
\item{map1}{The first output map.}
\item{map2}{The second output map.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes undistortion and rectification maps for omnidirectional camera image transform by a rotation R. It output two maps that are used for cv::remap . If D is empty then zero distortion is used, if R or P is empty then identity matrices are used.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ccalib/omnidir.hpp>}
}
\keyword{opencv}
