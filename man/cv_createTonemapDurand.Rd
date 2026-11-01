% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createTonemapDurand}
\alias{cv_createTonemapDurand}
\title{Creates TonemapDurand object}
\usage{cv_createTonemapDurand(gamma = 1, contrast = 4, saturation = 1,
    sigma_color = 2, sigma_space = 2)}
\arguments{
\item{gamma}{gamma value for gamma correction. See createTonemap}
\item{contrast}{resulting contrast on logarithmic scale, i. e. log(max / min), where max and min are maximum and minimum luminance values of the resulting image.}
\item{saturation}{saturation enhancement value. See createTonemapDrago}
\item{sigma_color}{bilateral filter sigma in color space}
\item{sigma_space}{bilateral filter sigma in coordinate space}
}
\value{\code{Ptr<TonemapDurand>} 对应的 R 对象。}
\description{Creates TonemapDurand object.}
\details{
You need to set the OPENCV_ENABLE_NONFREE option in cmake to use those. Use them at your own risk.

\strong{C++ 头文件：}\code{#include <opencv2/xphoto/tonemap.hpp>}
}
\keyword{opencv}
