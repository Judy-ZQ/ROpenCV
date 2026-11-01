% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_paint}
\alias{cv_paint}
\title{Paint run length encoded binary image into an image}
\usage{cv_paint(image = NULL, rlSrc, value)}
\arguments{
\item{image}{image to paint into (currently only single channel images).}
\item{rlSrc}{run length encoded image}
\item{value}{all foreground pixel of the binary image are set to this value}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Paint run length encoded binary image into an image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/run_length_morphology.hpp>}
}
\keyword{opencv}
