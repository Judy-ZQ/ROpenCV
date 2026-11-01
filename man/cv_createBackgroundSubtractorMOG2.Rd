% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createBackgroundSubtractorMOG2}
\alias{cv_createBackgroundSubtractorMOG2}
\title{Creates MOG2 Background Subtractor}
\usage{cv_createBackgroundSubtractorMOG2(history = 500, varThreshold = 16,
    detectShadows = TRUE)}
\arguments{
\item{history}{Length of the history.}
\item{varThreshold}{Threshold on the squared Mahalanobis distance between the pixel and the model to decide whether a pixel is well described by the background model. This parameter does not affect the background update.}
\item{detectShadows}{If true, the algorithm will detect shadows and mark them. It decreases the speed a bit, so if you do not need this feature, set the parameter to false.}
}
\value{\code{Ptr<BackgroundSubtractorMOG2>} 对应的 R 对象。}
\description{Creates MOG2 Background Subtractor.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/video/background_segm.hpp>}
}
\keyword{opencv}
