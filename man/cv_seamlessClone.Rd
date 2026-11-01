% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_seamlessClone}
\alias{cv_seamlessClone}
\title{Image editing tasks concern either global changes (color/intensity corrections, filters, deformations) or local changes concerned to a sele}
\usage{cv_seamlessClone(src, dst, mask = NULL, p, flags, blend = NULL)}
\arguments{
\item{src}{Input 8-bit 3-channel image.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{mask}{Input 8-bit 1 or 3-channel image.}
\item{p}{Point in dst image where object is placed.}
\item{flags}{Cloning method that could be cv::NORMAL_CLONE, cv::MIXED_CLONE or cv::MONOCHROME_TRANSFER}
\item{blend}{Output image with the same size and type as dst.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Image editing tasks concern either global changes (color/intensity corrections, filters, deformations) or local changes concerned to a selection. Here we are interested in achieving local changes, ones that are restricted to a region manually selected (ROI), in a seamless and effortless manner. The extent of the changes ranges from slight distortions to complete replacement by novel content [215] .}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
