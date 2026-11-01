% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_decolor}
\alias{cv_decolor}
\title{Transforms a color image to a grayscale image}
\usage{cv_decolor(src, grayscale = NULL, color_boost = NULL)}
\arguments{
\item{src}{Input 8-bit 3-channel image.}
\item{grayscale}{Output 8-bit 1-channel image.}
\item{color_boost}{Output 8-bit 3-channel image.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Transforms a color image to a grayscale image. It is a basic tool in digital printing, stylized black-and-white photograph rendering, and in many single channel image processing applications [176] .}
\details{
This function is to be applied on color images.

\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
