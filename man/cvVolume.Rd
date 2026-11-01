% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvVolume}
\alias{cvVolume}
\title{cv::Volume}
\usage{cvVolume(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvVolume} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::Volume} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::Volume} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/3d/volume.hpp>}
\strong{构造}
\preformatted{
cvVolume(vtype = TSDF, settings = NULL)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvVolume(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{fetchNormals(points, dst = NULL)}：Extract the all data from volume.
\item \code{fetchPointsNormals(points = NULL, normals = NULL)}：Extract the all data from volume.
\item \code{fetchPointsNormalsColors(points = NULL, normals = NULL, colors = NULL)}：Extract the all data from volume.
\item \code{getBoundingBox(dst = NULL, precision)}：Gets bounding box in volume coordinates with given precision: VOLUME_UNIT - up to volume unit VOXEL - up to voxel (currently not supported)
\item \code{getEnableGrowth()}：Returns if new volume units are allocated during integration or not. Makes sense for HashTSDF only.
\item \code{getTotalVolumeUnits()}：return number of volume units in volume.
\item \code{getVisibleBlocks()}：return visible blocks in volume.
\item \code{raycast(cameraPose, points = NULL, normals = NULL)}：Renders the volume contents into an image. The resulting points and normals are in camera's coordinate system.
\item \code{reset()}：clear all data in volume.
\item \code{setEnableGrowth(v)}：Enables or disables new volume unit allocation during integration. Makes sense for HashTSDF only.
}
}
\keyword{opencv}
