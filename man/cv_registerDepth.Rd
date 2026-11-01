% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_registerDepth}
\alias{cv_registerDepth}
\title{Registers depth data to an external camera Registration is performed by creating a depth cloud, transforming the cloud by the rigid body tr}
\usage{cv_registerDepth(unregisteredCameraMatrix, registeredCameraMatrix,
    registeredDistCoeffs, Rt, unregisteredDepth, outputImagePlaneSize,
    depthDilation = FALSE, dst = NULL)}
\arguments{
\item{unregisteredCameraMatrix}{the camera matrix of the depth camera}
\item{registeredCameraMatrix}{the camera matrix of the external camera}
\item{registeredDistCoeffs}{the distortion coefficients of the external camera}
\item{Rt}{the rigid body transform between the cameras. Transforms points from depth camera frame to external camera frame.}
\item{unregisteredDepth}{the input depth data}
\item{outputImagePlaneSize}{the image plane dimensions of the external camera (width, height)}
\item{depthDilation}{whether or not the depth is dilated to avoid holes and occlusion errors (optional)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Registers depth data to an external camera Registration is performed by creating a depth cloud, transforming the cloud by the rigid body transformation between the cameras, and then projecting the transformed points into the RGB camera.}
\details{
uv_rgb = K_rgb * [R | t] * z * inv(K_ir) * uv_ir

Currently does not check for negative depth values.

\strong{C++ 头文件：}\code{#include <opencv2/3d/depth.hpp>}
}
\keyword{opencv}
