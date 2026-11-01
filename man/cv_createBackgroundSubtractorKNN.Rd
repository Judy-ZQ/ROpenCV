% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createBackgroundSubtractorKNN}
\alias{cv_createBackgroundSubtractorKNN}
\title{Creates KNN Background Subtractor}
\usage{cv_createBackgroundSubtractorKNN(history = 500, dist2Threshold = 400,
    detectShadows = TRUE)}
\arguments{
\item{history}{Length of the history.}
\item{dist2Threshold}{Threshold on the squared distance between the pixel and the sample to decide whether a pixel is close to that sample. This parameter does not affect the background update.}
\item{detectShadows}{If true, the algorithm will detect shadows and mark them. It decreases the speed a bit, so if you do not need this feature, set the parameter to false.}
}
\value{\code{Ptr<BackgroundSubtractorKNN>} 对应的 R 对象。}
\description{Creates KNN Background Subtractor.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/video/background_segm.hpp>}
}
\keyword{opencv}
