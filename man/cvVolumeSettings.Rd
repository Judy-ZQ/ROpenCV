% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvVolumeSettings}
\alias{cvVolumeSettings}
\title{cv::VolumeSettings}
\usage{cvVolumeSettings(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvVolumeSettings} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::VolumeSettings} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::VolumeSettings} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/3d/volume_settings.hpp>}
\strong{构造}
\preformatted{
cvVolumeSettings(volumeType = TSDF)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvVolumeSettings(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getCameraIntegrateIntrinsics(dst = NULL)}：Returns intrinsics of camera for integrations. Format of output: [ fx 0 cx ] [ 0 fy cy ] [ 0 0 1 ] where fx and fy are focus points of Ox and Oy axises, and cx and cy are central points of Ox and Oy axises.
\item \code{getCameraRaycastIntrinsics(dst = NULL)}：Returns camera intrinsics for raycast image, used when user does not provide them at raycast call. Format of output: [ fx 0 cx ] [ 0 fy cy ] [ 0 0 1 ] where fx and fy are focus points of Ox and Oy axises, and cx and cy are central points of Ox and Oy axises.
\item \code{getDepthFactor()}：Returns depth factor, witch is the number for depth scaling.
\item \code{getIntegrateHeight()}：Returns the height of the image for integration.
\item \code{getIntegrateWidth()}：Returns the width of the image for integration.
\item \code{getMaxDepth()}：Returns threshold for depth truncation in meters. Truncates the depth greater than threshold to 0.
\item \code{getMaxWeight()}：Returns max number of frames to integrate per voxel. Represents the max number of frames over which a running average of the TSDF is calculated for a voxel.
\item \code{getRaycastHeight()}：Returns the height of the raycasted image, used when user does not provide it at raycast call.
\item \code{getRaycastStepFactor()}：Returns length of single raycast step. Describes the percentage of voxel length that is skipped per march.
\item \code{getRaycastWidth()}：Returns the width of the raycasted image, used when user does not provide it at raycast call.
\item \code{getTsdfTruncateDistance()}：Returns TSDF truncation distance. Distances greater than value from surface will be truncated to 1.0.
\item \code{getVolumePose(dst = NULL)}：Sets volume pose.
\item \code{getVolumeResolution(dst = NULL)}：Resolution of voxel space. Number of voxels in each dimension. Applicable only for TSDF Volume. HashTSDF volume only supports equal resolution in all three dimensions.
\item \code{getVolumeStrides(dst = NULL)}：Returns 3 integers representing strides by x, y and z dimension. Can be used to iterate over raw volume unit data.
\item \code{getVoxelSize()}：Returns the size of voxel.
\item \code{setCameraIntegrateIntrinsics(val)}：Sets intrinsics of camera for integrations. Format of input: [ fx 0 cx ] [ 0 fy cy ] [ 0 0 1 ] where fx and fy are focus points of Ox and Oy axises, and cx and cy are central points of Ox and Oy axises.
\item \code{setCameraRaycastIntrinsics(val)}：Sets camera intrinsics for raycast image which, used when user does not provide them at raycast call. Format of input: [ fx 0 cx ] [ 0 fy cy ] [ 0 0 1 ] where fx and fy are focus points of Ox and Oy axises, and cx and cy are central points of Ox and Oy axises.
\item \code{setDepthFactor(val)}：Sets depth factor, witch is the number for depth scaling.
\item \code{setIntegrateHeight(val)}：Sets the height of the image for integration.
\item \code{setIntegrateWidth(val)}：Sets the width of the image for integration.
\item \code{setMaxDepth(val)}：Sets threshold for depth truncation in meters. Truncates the depth greater than threshold to 0.
\item \code{setMaxWeight(val)}：Sets max number of frames to integrate per voxel. Represents the max number of frames over which a running average of the TSDF is calculated for a voxel.
\item \code{setRaycastHeight(val)}：Sets the height of the raycasted image, used when user does not provide it at raycast call.
\item \code{setRaycastStepFactor(val)}：Sets length of single raycast step. Describes the percentage of voxel length that is skipped per march.
\item \code{setRaycastWidth(val)}：Sets the width of the raycasted image, used when user does not provide it at raycast call.
\item \code{setTsdfTruncateDistance(val)}：Sets TSDF truncation distance. Distances greater than value from surface will be truncated to 1.0.
\item \code{setVolumePose(val)}：Sets volume pose.
\item \code{setVolumeResolution(val)}：Resolution of voxel space. Number of voxels in each dimension. Applicable only for TSDF Volume. HashTSDF volume only supports equal resolution in all three dimensions.
\item \code{setVoxelSize(val)}：Sets the size of voxel.
}
}
\keyword{opencv}
