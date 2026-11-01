% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createTonemapMantiuk}
\alias{cv_createTonemapMantiuk}
\title{Creates TonemapMantiuk object}
\usage{cv_createTonemapMantiuk(gamma = 1, scale = 0.7, saturation = 1)}
\arguments{
\item{gamma}{gamma value for gamma correction. See createTonemap}
\item{scale}{contrast scale factor. HVS response is multiplied by this parameter, thus compressing dynamic range. Values from 0.6 to 0.9 produce best results.}
\item{saturation}{saturation enhancement value. See createTonemapDrago}
}
\value{\code{Ptr<TonemapMantiuk>} 对应的 R 对象。}
\description{Creates TonemapMantiuk object.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
