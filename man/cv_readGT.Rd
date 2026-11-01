% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_readGT}
\alias{cv_readGT}
\title{Function for reading ground truth disparity maps}
\usage{cv_readGT(src_path, dst = NULL)}
\arguments{
\item{src_path}{path to the image, containing ground-truth disparity map}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Function for reading ground truth disparity maps. Supports basic Middlebury and MPI-Sintel formats. Note that the resulting disparity map is scaled by 16.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/disparity_filter.hpp>}
}
\keyword{opencv}
