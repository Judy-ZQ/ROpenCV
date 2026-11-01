% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_omnidir_undistortPoints}
\alias{cv_omnidir_undistortPoints}
\title{Undistort 2D image points for omnidirectional camera using CMei's model}
\usage{cv_omnidir_undistortPoints(distorted, K, D, xi, R, dst = NULL)}
\arguments{
\item{distorted}{Array of distorted image points, vector of Vec2f or 1xN/Nx1 2-channel Mat of type CV_32F, 64F depth is also acceptable}
\item{K}{Camera matrix .}
\item{D}{Distortion coefficients .}
\item{xi}{The parameter xi for CMei's model}
\item{R}{Rotation trainsform between the original and object space : 3x3 1-channel, or vector: 3x1/1x3 1-channel or 1x1 3-channel}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Undistort 2D image points for omnidirectional camera using CMei's model.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ccalib/omnidir.hpp>}
}
\keyword{opencv}
