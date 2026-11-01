% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_depthTo3d}
\alias{cv_depthTo3d}
\title{Converts a depth image to 3d points}
\usage{cv_depthTo3d(depth, K, mask = NULL, dst = NULL)}
\arguments{
\item{depth}{the depth image (if given as short int CV_U, it is assumed to be the depth in millimeters (as done with the Microsoft Kinect), otherwise, if given as CV_32F or CV_64F, it is assumed in meters)}
\item{K}{The calibration matrix}
\item{mask}{the mask of the points to consider (can be empty)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Converts a depth image to 3d points. If the mask is empty then the resulting array has the same dimensions as \code{depth}, otherwise it is 1d vector containing mask-enabled values only. The coordinate system is x pointing left, y down and z away from the camera}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/3d/depth.hpp>}
}
\keyword{opencv}
