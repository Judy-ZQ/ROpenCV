% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_qdft}
\alias{cv_qdft}
\title{Performs a forward or inverse Discrete quaternion Fourier transform of a 2D quaternion array}
\usage{cv_qdft(img, flags, sideLeft, dst = NULL)}
\arguments{
\item{img}{quaternion image.}
\item{flags}{quaternion image in dual space. only DFT_INVERSE flags is supported}
\item{sideLeft}{true the hypercomplex exponential is to be multiplied on the left (false on the right ).}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs a forward or inverse Discrete quaternion Fourier transform of a 2D quaternion array.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/color_match.hpp>}
}
\keyword{opencv}
