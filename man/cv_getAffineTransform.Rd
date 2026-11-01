% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getAffineTransform}
\alias{cv_getAffineTransform}
\title{Calculates an affine transform from three pairs of the corresponding points}
\usage{cv_getAffineTransform(src, dst)}
\arguments{
\item{src}{Coordinates of triangle vertices in the source image.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{\code{cvMat} 图像。}
\description{Calculates an affine transform from three pairs of the corresponding points.}
\details{
The function calculates the matrix of an affine transform so that:

where

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_warpAffine}}、\code{\link{cv_transform}}}
\keyword{opencv}
