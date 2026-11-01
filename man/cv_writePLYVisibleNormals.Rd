% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_writePLYVisibleNormals}
\alias{cv_writePLYVisibleNormals}
\title{Used for debbuging pruposes, writes a point cloud to a PLY file with the tip of the normal vectors as visible red points}
\usage{cv_writePLYVisibleNormals(PC, fileName)}
\arguments{
\item{PC}{Input point cloud}
\item{fileName}{The PLY model file to write}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Used for debbuging pruposes, writes a point cloud to a PLY file with the tip of the normal vectors as visible red points.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/surface_matching/ppf_helpers.hpp>}
}
\keyword{opencv}
