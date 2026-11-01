% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_resampleSignal}
\alias{cv_resampleSignal}
\title{Signal resampling}
\usage{cv_resampleSignal(inputSignal, inFreq, outFreq, dst = NULL)}
\arguments{
\item{inputSignal}{Array with input signal.}
\item{inFreq}{Input signal frequency.}
\item{outFreq}{Output signal frequency. Signal resampling implemented a cubic interpolation function and a filtering function based on Kaiser window and Bessel function, used to construct a FIR filter. Result is similar to \code{scipy.signal.resample}.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Signal resampling.}
\details{
Detail: https://en.wikipedia.org/wiki/Sample-rate_conversion

\strong{C++ 头文件：}\code{#include <opencv2/signal/signal_resample.hpp>}
}
\keyword{opencv}
