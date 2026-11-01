% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_triangulatePoints}
\alias{cv_triangulatePoints}
\title{This function reconstructs 3-dimensional points (in homogeneous coordinates) by using their observations with a stereo camera}
\usage{cv_triangulatePoints(projMatr1, projMatr2, projPoints1, projPoints2,
    dst = NULL)}
\arguments{
\item{projMatr1}{3x4 projection matrix of the first camera, i.e. this matrix projects 3D points given in the world's coordinate system into the first image.}
\item{projMatr2}{3x4 projection matrix of the second camera, i.e. this matrix projects 3D points given in the world's coordinate system into the second image.}
\item{projPoints1}{2xN array of feature points in the first image. In the case of the c++ version, it can be also a vector of feature points or two-channel matrix of size 1xN or Nx1.}
\item{projPoints2}{2xN array of corresponding points in the second image. In the case of the c++ version, it can be also a vector of feature points or two-channel matrix of size 1xN or Nx1.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{This function reconstructs 3-dimensional points (in homogeneous coordinates) by using their observations with a stereo camera.}
\details{
\strong{注意：}Keep in mind that all input data should be of float type in order for this function to work. If the projection matrices from stereoRectify are used, then the returned points are represented in the first camera's rectified coordinate system.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\seealso{\code{\link{cv_reprojectImageTo3D}}}
\keyword{opencv}
