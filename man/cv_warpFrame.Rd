% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_warpFrame}
\alias{cv_warpFrame}
\title{Warps depth or RGB-D image by reprojecting it in 3d, applying Rt transformation and then projecting it back onto the image plane}
\usage{cv_warpFrame(depth, image, mask = NULL, Rt, cameraMatrix, warpedDepth = NULL,
    warpedImage = NULL, warpedMask = NULL)}
\arguments{
\item{depth}{Depth data, should be 1-channel CV_16U, CV_16S, CV_32F or CV_64F}
\item{image}{RGB image (optional), should be 1-, 3- or 4-channel CV_8U}
\item{mask}{Mask of used pixels (optional), should be CV_8UC1}
\item{Rt}{Rotation+translation matrix (3x4 or 4x4) to be applied to depth points}
\item{cameraMatrix}{Camera intrinsics matrix (3x3)}
\item{warpedDepth}{The warped depth data (optional)}
\item{warpedImage}{The warped RGB image (optional)}
\item{warpedMask}{The mask of valid pixels in warped image (optional)}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Warps depth or RGB-D image by reprojecting it in 3d, applying Rt transformation and then projecting it back onto the image plane. This function can be used to visualize the results of the Odometry algorithm.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/3d/depth.hpp>}
}
\keyword{opencv}
