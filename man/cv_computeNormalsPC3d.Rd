% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_computeNormalsPC3d}
\alias{cv_computeNormalsPC3d}
\title{Compute the normals of an arbitrary point cloud computeNormalsPC3d uses a plane fitting approach to smoothly compute local normals}
\usage{cv_computeNormalsPC3d(PC, NumNeighbors, FlipViewpoint, viewpoint)}
\arguments{
\item{PC}{Input point cloud to compute the normals for.}
\item{NumNeighbors}{Number of neighbors to take into account in a local region}
\item{FlipViewpoint}{Should normals be flipped to a viewing direction?}
\item{viewpoint}{含义见下方 C++ 签名。}
}
\value{Returns 0 on success}
\description{Compute the normals of an arbitrary point cloud computeNormalsPC3d uses a plane fitting approach to smoothly compute local normals. Normals are obtained through the eigenvector of the covariance matrix, corresponding to the smallest eigen value. If PCNormals is provided to be an Nx6 matrix, then no new allocation is made, instead the existing memory is overwritten.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/surface_matching/ppf_helpers.hpp>}
}
\keyword{opencv}
