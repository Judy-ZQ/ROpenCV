% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_transformPCPose}
\alias{cv_transformPCPose}
\title{Transforms the point cloud with a given a homogeneous 4x4 pose matrix (in double precision)}
\usage{cv_transformPCPose(pc, Pose)}
\arguments{
\item{pc}{Input point cloud (CV_32F family). Point clouds with 3 or 6 elements per row are expected. In the case where the normals are provided, they are also rotated to be compatible with the entire transformation}
\item{Pose}{4x4 pose matrix, but linearized in row-major form.}
}
\value{Transformed point cloud}
\description{Transforms the point cloud with a given a homogeneous 4x4 pose matrix (in double precision)}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/surface_matching/ppf_helpers.hpp>}
}
\keyword{opencv}
