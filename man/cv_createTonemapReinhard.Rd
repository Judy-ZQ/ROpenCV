% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createTonemapReinhard}
\alias{cv_createTonemapReinhard}
\title{Creates TonemapReinhard object}
\usage{cv_createTonemapReinhard(gamma = 1, intensity = 0, light_adapt = 1,
    color_adapt = 0)}
\arguments{
\item{gamma}{gamma value for gamma correction. See createTonemap}
\item{intensity}{result intensity in [-8, 8] range. Greater intensity produces brighter results.}
\item{light_adapt}{light adaptation in [0, 1] range. If 1 adaptation is based only on pixel value, if 0 it's global, otherwise it's a weighted mean of this two cases.}
\item{color_adapt}{chromatic adaptation in [0, 1] range. If 1 channels are treated independently, if 0 adaptation level is the same for each channel.}
}
\value{\code{Ptr<TonemapReinhard>} 对应的 R 对象。}
\description{Creates TonemapReinhard object.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
