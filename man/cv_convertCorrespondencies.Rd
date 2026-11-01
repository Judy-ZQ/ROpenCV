% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_convertCorrespondencies}
\alias{cv_convertCorrespondencies}
\title{Collect corresponding 2d and 3d points based on correspondencies and mask}
\usage{cv_convertCorrespondencies(cols, srcLocations, pts3d = NULL, mask = NULL,
    pts2d = NULL)}
\arguments{
\item{cols}{correspondence-position per line in line-bundle-space}
\item{srcLocations}{the source image location}
\item{pts3d}{3d points}
\item{mask}{mask containing non-zero values for the elements to be retained}
\item{pts2d}{2d points}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Collect corresponding 2d and 3d points based on correspondencies and mask}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/rapid.hpp>}
}
\keyword{opencv}
