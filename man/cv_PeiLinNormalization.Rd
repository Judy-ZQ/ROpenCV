% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_PeiLinNormalization}
\alias{cv_PeiLinNormalization}
\title{Calculates an affine transformation that normalize given image using Pei&Lin Normalization}
\usage{cv_PeiLinNormalization(I, dst = NULL)}
\arguments{
\item{I}{Given transformed image.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates an affine transformation that normalize given image using Pei&Lin Normalization.}
\details{
Assume given image where is a normalized image and is an affine transformation distorting this image by translation, rotation, scaling and skew. The function returns an affine transformation matrix corresponding to the transformation described in [PeiLin95]. For more details about this implementation, please see [PeiLin95] Soo-Chang Pei and Chao-Nan Lin. Image normalization for pattern recognition. Image and Vision Computing, Vol. 13, N.10, pp. 711-723, 1995.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/peilin.hpp>}
}
\keyword{opencv}
