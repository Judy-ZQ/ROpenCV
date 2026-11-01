% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_estimateNewCameraMatrixForUndistortRectify}
\alias{cv_estimateNewCameraMatrixForUndistortRectify}
\title{Estimates new camera intrinsic matrix for undistortion or rectification}
\usage{cv_estimateNewCameraMatrixForUndistortRectify(K, D, image_size, R,
    balance = 0, new_size = NULL, fov_scale = 1, dst = NULL)}
\arguments{
\item{K}{Camera intrinsic matrix .}
\item{D}{Input vector of distortion coefficients .}
\item{image_size}{Size of the image}
\item{R}{Rectification transformation in the object space: 3x3 1-channel, or vector: 3x1/1x3 1-channel or 1x1 3-channel}
\item{balance}{Sets the new focal length in range between the min focal length and the max focal length. Balance is in range of [0, 1].}
\item{new_size}{the new size}
\item{fov_scale}{Divisor for new focal length.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Estimates new camera intrinsic matrix for undistortion or rectification.}
\keyword{opencv}
