% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_extractLineBundle}
\alias{cv_extractLineBundle}
\title{Extract the line bundle from an image}
\usage{cv_extractLineBundle(len, ctl2d, img, bundle = NULL, srcLocations = NULL)}
\arguments{
\item{len}{the search radius. The bundle will have \code{2*len + 1} columns.}
\item{ctl2d}{the search lines will be centered at this points and orthogonal to the contour defined by them. The bundle will have as many rows.}
\item{img}{the image to read the pixel intensities values from}
\item{bundle}{line bundle image with size \code{ctl2d.rows x (2 * len + 1)} and the same type as \code{img}}
\item{srcLocations}{the source pixel locations of \code{bundle} in \code{img} as CV_16SC2}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Extract the line bundle from an image}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/rapid.hpp>}
}
\keyword{opencv}
