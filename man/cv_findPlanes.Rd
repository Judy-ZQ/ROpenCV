% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findPlanes}
\alias{cv_findPlanes}
\title{Find the planes in a depth image}
\usage{cv_findPlanes(points3d, normals, block_size = 40, min_size = 1600,
    threshold = 0.01, sensor_error_a = 0, sensor_error_b = 0,
    sensor_error_c = 0, method = RGBD_PLANE_METHOD_DEFAULT, mask = NULL,
    plane_coefficients = NULL)}
\arguments{
\item{points3d}{the 3d points organized like the depth image: rows x cols with 3 channels}
\item{normals}{the normals for every point in the depth image; optional, can be empty}
\item{block_size}{The size of the blocks to look at for a stable MSE}
\item{min_size}{The minimum size of a cluster to be considered a plane}
\item{threshold}{The maximum distance of a point from a plane to belong to it (in meters)}
\item{sensor_error_a}{coefficient of the sensor error. 0 by default, use 0.0075 for a Kinect}
\item{sensor_error_b}{coefficient of the sensor error. 0 by default}
\item{sensor_error_c}{coefficient of the sensor error. 0 by default}
\item{method}{The method to use to compute the planes.}
\item{mask}{An image where each pixel is labeled with the plane it belongs to and 255 if it does not belong to any plane}
\item{plane_coefficients}{the coefficients of the corresponding planes (a,b,c,d) such that ax+by+cz+d=0, norm(a,b,c)=1 and c < 0 (so that the normal points towards the camera)}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Find the planes in a depth image}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/3d/depth.hpp>}
}
\keyword{opencv}
