% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_omnidir_stereoRectify}
\alias{cv_omnidir_stereoRectify}
\title{Stereo rectification for omnidirectional camera model}
\usage{cv_omnidir_stereoRectify(R, T, R1 = NULL, R2 = NULL)}
\arguments{
\item{R}{Rotation between the first and second camera}
\item{T}{Translation between the first and second camera}
\item{R1}{Output 3x3 rotation matrix for the first camera}
\item{R2}{Output 3x3 rotation matrix for the second camera}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Stereo rectification for omnidirectional camera model. It computes the rectification rotations for two cameras.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ccalib/omnidir.hpp>}
}
\keyword{opencv}
