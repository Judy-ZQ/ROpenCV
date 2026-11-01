% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_omnidir_projectPoints}
\alias{cv_omnidir_projectPoints}
\title{Projects points for omnidirectional camera using CMei's model}
\usage{cv_omnidir_projectPoints(objectPoints, rvec, tvec, K, xi, D,
    imagePoints = NULL, jacobian = NULL)}
\arguments{
\item{objectPoints}{Object points in world coordinate, vector of vector of Vec3f or Mat of 1xN/Nx1 3-channel of type CV_32F and N is the number of points. 64F is also acceptable.}
\item{rvec}{vector of rotation between world coordinate and camera coordinate, i.e., om}
\item{tvec}{vector of translation between pattern coordinate and camera coordinate}
\item{K}{Camera matrix .}
\item{xi}{The parameter xi for CMei's model}
\item{D}{Input vector of distortion coefficients .}
\item{imagePoints}{Output array of image points, vector of vector of Vec2f or 1xN/Nx1 2-channel of type CV_32F. 64F is also acceptable.}
\item{jacobian}{Optional output 2Nx16 of type CV_64F jacobian matrix, contains the derivatives of image pixel points wrt parameters including . This matrix will be used in calibration by optimization.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Projects points for omnidirectional camera using CMei's model.}
\details{
This module was accepted as a GSoC 2015 project for OpenCV, authored by Baisheng Lai, mentored by Bo Li.

The function projects object 3D points of world coordinate to image pixels, parameter by intrinsic and extrinsic parameters. Also, it optionally compute a by-product: the jacobian matrix containing contains the derivatives of image pixel points wrt intrinsic and extrinsic parameters.

\strong{C++ 头文件：}\code{#include <opencv2/ccalib/omnidir.hpp>}
}
\keyword{opencv}
