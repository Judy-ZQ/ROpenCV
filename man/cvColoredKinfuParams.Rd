% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvColoredKinfuParams}
\alias{cvColoredKinfuParams}
\title{\code{cv::colored_kinfu::Params} 参数对象}
\usage{cvColoredKinfuParams(...)}
\arguments{
\item{...}{字段按名字给出，未给出的保持 OpenCV 的默认值；写错字段名会直接报错。}
}
\value{一个 \code{cvColoredKinfuParams} 对象，可直接作为其它函数的 \code{params} 参数。}
\description{\code{cv::colored_kinfu::Params} 的参数对象，字段按名字给出。}
\details{
\strong{字段}

字段名与 C++ 结构体一致，可用 \code{cv_struct_fields("cv::colored_kinfu::Params")} 查全部字段。

\itemize{

\item \code{bilateral_kernel_size}（\code{int}）：Kernel size in pixels for bilateral smooth.

\item \code{bilateral_sigma_depth}（\code{float}）：Depth sigma in meters for bilateral smooth.

\item \code{bilateral_sigma_spatial}（\code{float}）：Spatial sigma in pixels for bilateral smooth.

\item \code{depthFactor}（\code{float}）：pre-scale per 1 meter for input values

\item \code{frameSize}（\code{Size}）：frame size in pixels

\item \code{icpAngleThresh}（\code{float}）：angle threshold for ICP in radians

\item \code{icpDistThresh}（\code{float}）：distance theshold for ICP in meters

\item \code{icpIterations}（\code{std::vector<int>}）：number of ICP iterations for each pyramid level

\item \code{intr}（\code{Matx33f}）：camera intrinsics

\item \code{lightPose}（\code{Vec3f}）：light pose for rendering in meters

\item \code{pyramidLevels}（\code{int}）：Number of pyramid levels for ICP.

\item \code{raycast_step_factor}（\code{float}）：A length of one raycast step.

\item \code{rgb_frameSize}（\code{Size}）：rgb frame size in pixels

\item \code{rgb_intr}（\code{Matx33f}）：rgb camera intrinsics

\item \code{truncateThreshold}（\code{float}）：Threshold for depth truncation in meters.

\item \code{tsdf_max_weight}（\code{int}）：max number of frames per voxel

\item \code{tsdf_min_camera_movement}（\code{float}）：Minimal camera movement in meters.

\item \code{tsdf_trunc_dist}（\code{float}）：distance to truncate in meters

\item \code{volumeDims}（\code{Vec3i}）：Resolution of voxel space.

\item \code{volumeKind}（\code{VolumeType}）

\item \code{volumePose}（\code{Matx44f}）：initial volume pose in meters

\item \code{voxelSize}（\code{float}）：Size of voxel in meters.

}

\strong{C++ 头文件：}\code{#include <opencv2/rgbd/colored_kinfu.hpp>}
}
\keyword{opencv}
