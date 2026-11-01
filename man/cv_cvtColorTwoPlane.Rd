% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_cvtColorTwoPlane}
\alias{cv_cvtColorTwoPlane}
\title{Converts an image from one color space to another where the source image is stored in two planes}
\usage{cv_cvtColorTwoPlane(src1, src2, code, hint = ALGO_HINT_DEFAULT, dst = NULL)}
\arguments{
\item{src1}{8-bit image (CV_8U) of the Y plane.}
\item{src2}{image containing interleaved U/V plane.}
\item{code}{Specifies the type of conversion. It can take any of the following values: COLOR_YUV2BGR_NV12 COLOR_YUV2RGB_NV12 COLOR_YUV2BGRA_NV12 COLOR_YUV2RGBA_NV12 COLOR_YUV2BGR_NV21 COLOR_YUV2RGB_NV21 COLOR_YUV2BGRA_NV21 COLOR_YUV2RGBA_NV21}
\item{hint}{Implementation modfication flags. See AlgorithmHint}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Converts an image from one color space to another where the source image is stored in two planes.}
\details{
This function only supports YUV420 to RGB conversion as of now.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
