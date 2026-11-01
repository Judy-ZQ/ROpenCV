% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createBackgroundSubtractorCNT}
\alias{cv_createBackgroundSubtractorCNT}
\title{Creates a CNT Background Subtractor}
\usage{cv_createBackgroundSubtractorCNT(minPixelStability = 15, useHistory = TRUE,
    maxPixelStability = 900, isParallel = TRUE)}
\arguments{
\item{minPixelStability}{number of frames with same pixel color to consider stable}
\item{useHistory}{determines if we're giving a pixel credit for being stable for a long time}
\item{maxPixelStability}{maximum allowed credit for a pixel in history}
\item{isParallel}{determines if we're parallelizing the algorithm}
}
\value{\code{Ptr<BackgroundSubtractorCNT>} 对应的 R 对象。}
\description{Creates a CNT Background Subtractor.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/bgsegm.hpp>}
}
\keyword{opencv}
