% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_voxelGridSampling}
\alias{cv_voxelGridSampling}
\title{Point cloud sampling by Voxel Grid filter downsampling}
\usage{cv_voxelGridSampling(dst = NULL, input_pts, length, width, height)}
\arguments{
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{input_pts}{Original point cloud, vector of Point3 or Mat of size Nx3/3xN.}
\item{length}{Grid length.}
\item{width}{Grid width.}
\item{height}{Grid height.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Point cloud sampling by Voxel Grid filter downsampling.}
\details{
Creates a 3D voxel grid (a set of tiny 3D boxes in space) over the input point cloud data, in each voxel (i.e., 3D box), all the points present will be approximated (i.e., downsampled) with the point closest to their centroid.

\strong{C++ 头文件：}\code{#include <opencv2/3d/ptcloud.hpp>}
}
\keyword{opencv}
