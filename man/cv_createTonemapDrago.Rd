% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createTonemapDrago}
\alias{cv_createTonemapDrago}
\title{Creates TonemapDrago object}
\usage{cv_createTonemapDrago(gamma = 1, saturation = 1, bias = 0.85)}
\arguments{
\item{gamma}{gamma value for gamma correction. See createTonemap}
\item{saturation}{positive saturation enhancement value. 1.0 preserves saturation, values greater than 1 increase saturation and values less than 1 decrease it.}
\item{bias}{value for bias function in [0, 1] range. Values from 0.7 to 0.9 usually give best results, default value is 0.85.}
}
\value{\code{Ptr<TonemapDrago>} 对应的 R 对象。}
\description{Creates TonemapDrago object.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
