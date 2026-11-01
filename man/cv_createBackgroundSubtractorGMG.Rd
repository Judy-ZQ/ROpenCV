% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createBackgroundSubtractorGMG}
\alias{cv_createBackgroundSubtractorGMG}
\title{Creates a GMG Background Subtractor}
\usage{cv_createBackgroundSubtractorGMG(initializationFrames = 120,
    decisionThreshold = 0.8)}
\arguments{
\item{initializationFrames}{number of frames used to initialize the background models.}
\item{decisionThreshold}{Threshold value, above which it is marked foreground, else background.}
}
\value{\code{Ptr<BackgroundSubtractorGMG>} 对应的 R 对象。}
\description{Creates a GMG Background Subtractor.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/bgsegm.hpp>}
}
\keyword{opencv}
