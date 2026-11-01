% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createBackgroundSubtractorMOG}
\alias{cv_createBackgroundSubtractorMOG}
\title{Creates mixture-of-gaussian background subtractor}
\usage{cv_createBackgroundSubtractorMOG(history = 200, nmixtures = 5,
    backgroundRatio = 0.7, noiseSigma = 0)}
\arguments{
\item{history}{Length of the history.}
\item{nmixtures}{Number of Gaussian mixtures.}
\item{backgroundRatio}{Background ratio.}
\item{noiseSigma}{Noise strength (standard deviation of the brightness or each color channel). 0 means some automatic value.}
}
\value{\code{Ptr<BackgroundSubtractorMOG>} 对应的 R 对象。}
\description{Creates mixture-of-gaussian background subtractor.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/bgsegm.hpp>}
}
\keyword{opencv}
