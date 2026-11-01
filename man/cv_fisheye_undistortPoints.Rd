% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fisheye_undistortPoints}
\alias{cv_fisheye_undistortPoints}
\title{Undistorts 2D points using fisheye model}
\usage{cv_fisheye_undistortPoints(distorted, K, D, R = NULL, P = NULL,
    criteria = c(6, 10, 1e-08), dst = NULL)}
\arguments{
\item{distorted}{Array of object points, 1xN/Nx1 2-channel (or vector<Point2f> ), where N is the number of points in the view.}
\item{K}{Camera intrinsic matrix .}
\item{D}{Input vector of distortion coefficients .}
\item{R}{Rectification transformation in the object space: 3x3 1-channel, or vector: 3x1/1x3 1-channel or 1x1 3-channel}
\item{P}{New camera intrinsic matrix (3x3) or new projection matrix (3x4)}
\item{criteria}{Termination criteria}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Undistorts 2D points using fisheye model.}
\keyword{opencv}
