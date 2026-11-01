% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createQuaternionImage}
\alias{cv_createQuaternionImage}
\title{creates a quaternion image}
\usage{cv_createQuaternionImage(img, dst = NULL)}
\arguments{
\item{img}{Source 8-bit, 32-bit or 64-bit image, with 3-channel image.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{creates a quaternion image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/color_match.hpp>}
}
\keyword{opencv}
