% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_blendLinear}
\alias{cv_blendLinear}
\title{Performs linear blending of two images}
\usage{cv_blendLinear(src1, src2, weights1, weights2, dst = NULL)}
\arguments{
\item{src1}{It has a type of CV_8UC(n) or CV_32FC(n), where n is a positive integer.}
\item{src2}{It has the same type and size as src1.}
\item{weights1}{It has a type of CV_32FC1 and the same size with src1.}
\item{weights2}{It has a type of CV_32FC1 and the same size with src1.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs linear blending of two images}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
