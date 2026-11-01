% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_pencilSketch}
\alias{cv_pencilSketch}
\title{Pencil-like non-photorealistic line drawing}
\usage{cv_pencilSketch(src, sigma_s = 60, sigma_r = 0.07, shade_factor = 0.02,
    dst1 = NULL, dst2 = NULL)}
\arguments{
\item{src}{Input 8-bit 3-channel image.}
\item{sigma_s}{Range between 0 to 200.}
\item{sigma_r}{Range between 0 to 1.}
\item{shade_factor}{Range between 0 to 0.1.}
\item{dst1}{Output 8-bit 1-channel image.}
\item{dst2}{Output image with the same size and type as src.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Pencil-like non-photorealistic line drawing.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
