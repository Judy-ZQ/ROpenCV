% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_undistortImagePoints}
\alias{cv_undistortImagePoints}
\title{Compute undistorted image points position}
\usage{cv_undistortImagePoints(src, cameraMatrix, distCoeffs,
    criteria = c(6, 5, 0.01), dst = NULL)}
\arguments{
\item{src}{Observed points position, 2xN/Nx2 1-channel or 1xN/Nx1 2-channel (CV_32FC2 or CV_64FC2) (or vector<Point2f> ).}
\item{cameraMatrix}{Camera matrix .}
\item{distCoeffs}{Distortion coefficients}
\item{criteria}{含义见下方 C++ 签名。}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Compute undistorted image points position.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
