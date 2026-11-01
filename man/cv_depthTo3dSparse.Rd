% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_depthTo3dSparse}
\alias{cv_depthTo3dSparse}
\title{cv_depthTo3dSparse}
\usage{cv_depthTo3dSparse(depth, in_K, in_points, dst = NULL)}
\arguments{
\item{depth}{the depth image}
\item{in_K}{含义见下方 C++ 签名。}
\item{in_points}{the list of xy coordinates}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{R 侧入口 \code{cv_depthTo3dSparse}，对应 C++ 的 \code{cv::depthTo3dSparse}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/3d/depth.hpp>}
}
\keyword{opencv}
