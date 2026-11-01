% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_omnidir_undistortImage}
\alias{cv_omnidir_undistortImage}
\title{Undistort omnidirectional images to perspective images}
\usage{cv_omnidir_undistortImage(distorted, K, D, xi, flags, Knew = NULL,
    new_size = NULL, R, dst = NULL)}
\arguments{
\item{distorted}{The input omnidirectional image.}
\item{K}{Camera matrix .}
\item{D}{Input vector of distortion coefficients .}
\item{xi}{The parameter xi for CMei's model.}
\item{flags}{Flags indicates the rectification type, RECTIFY_PERSPECTIVE, RECTIFY_CYLINDRICAL, RECTIFY_LONGLATI and RECTIFY_STEREOGRAPHIC}
\item{Knew}{Camera matrix of the distorted image. If it is not assigned, it is just K.}
\item{new_size}{The new image size. By default, it is the size of distorted.}
\item{R}{Rotation matrix between the input and output images. By default, it is identity matrix.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Undistort omnidirectional images to perspective images.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ccalib/omnidir.hpp>}
}
\keyword{opencv}
