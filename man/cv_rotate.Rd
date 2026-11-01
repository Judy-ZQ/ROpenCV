% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_rotate}
\alias{cv_rotate}
\title{Rotates a 2D array in multiples of 90 degrees}
\usage{cv_rotate(src, rotateCode, dst = NULL)}
\arguments{
\item{src}{input array.}
\item{rotateCode}{an enum to specify how to rotate the array; see the enum RotateFlags}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Rotates a 2D array in multiples of 90 degrees. The function cv::rotate rotates the array in one of three different ways: Rotate by 90 degrees clockwise (rotateCode = ROTATE_90_CLOCKWISE). Rotate by 180 degrees clockwise (rotateCode = ROTATE_180). Rotate by 270 degrees clockwise (rotateCode = ROTATE_90_COUNTERCLOCKWISE).}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_transpose}}、\code{\link{cv_repeat}}、\code{\link{cv_completeSymm}}、\code{\link{cv_flip}}}
\keyword{opencv}
