% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_qconj}
\alias{cv_qconj}
\title{calculates conjugate of a quaternion image}
\usage{cv_qconj(qimg, dst = NULL)}
\arguments{
\item{qimg}{quaternion image.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{calculates conjugate of a quaternion image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/color_match.hpp>}
}
\keyword{opencv}
