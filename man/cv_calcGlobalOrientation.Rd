% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcGlobalOrientation}
\alias{cv_calcGlobalOrientation}
\title{Calculates a global motion orientation in a selected region}
\usage{cv_calcGlobalOrientation(orientation, mask = NULL, mhi, timestamp, duration)}
\arguments{
\item{orientation}{Motion gradient orientation image calculated by the function calcMotionGradient}
\item{mask}{Mask image. It may be a conjunction of a valid gradient mask, also calculated by calcMotionGradient , and the mask of a region whose direction needs to be calculated.}
\item{mhi}{Motion history image calculated by updateMotionHistory .}
\item{timestamp}{Timestamp passed to updateMotionHistory .}
\item{duration}{Maximum duration of a motion track in milliseconds, passed to updateMotionHistory}
}
\value{数值标量。}
\description{Calculates a global motion orientation in a selected region.}
\details{
The function calculates an average motion direction in the selected region and returns the angle between 0 degrees and 360 degrees. The average direction is computed from the weighted orientation histogram, where a recent motion has a larger weight and the motion occurred in the past has a smaller weight, as recorded in mhi .

\strong{C++ 头文件：}\code{#include <opencv2/optflow/motempl.hpp>}
}
\keyword{opencv}
