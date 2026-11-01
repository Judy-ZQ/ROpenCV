% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_rescaleDepth}
\alias{cv_rescaleDepth}
\title{If the input image is of type CV_16UC1 (like the Kinect one), the image is converted to floats, divided by depth_factor to get a depth in m}
\usage{cv_rescaleDepth(in_, type, depth_factor = 1000, dst = NULL)}
\arguments{
\item{in_}{含义见下方 C++ 签名。}
\item{type}{the desired output depth (CV_32F or CV_64F)}
\item{depth_factor}{(optional) factor by which depth is converted to distance (by default = 1000.0 for Kinect sensor)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{If the input image is of type CV_16UC1 (like the Kinect one), the image is converted to floats, divided by depth_factor to get a depth in meters, and the values 0 are converted to std::numeric_limits<float>::quiet_NaN Otherwise, the image is simply converted to floats}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/3d/depth.hpp>}
}
\keyword{opencv}
