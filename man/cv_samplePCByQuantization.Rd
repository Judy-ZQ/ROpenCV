% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_samplePCByQuantization}
\alias{cv_samplePCByQuantization}
\title{Sample a point cloud using uniform steps}
\usage{cv_samplePCByQuantization(pc, xrange = NULL, yrange = NULL, zrange = NULL,
    sample_step_relative, weightByCenter = 0)}
\arguments{
\item{pc}{Input point cloud}
\item{xrange}{X components (min and max) of the bounding box of the model}
\item{yrange}{Y components (min and max) of the bounding box of the model}
\item{zrange}{Z components (min and max) of the bounding box of the model}
\item{sample_step_relative}{The point cloud is sampled such that all points have a certain minimum distance. This minimum distance is determined relatively using the parameter sample_step_relative.}
\item{weightByCenter}{The contribution of the quantized data points can be weighted by the distance to the origin. This parameter enables/disables the use of weighting.}
}
\value{Sampled point cloud}
\description{Sample a point cloud using uniform steps}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/surface_matching/ppf_helpers.hpp>}
}
\keyword{opencv}
