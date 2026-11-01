% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_updateMotionHistory}
\alias{cv_updateMotionHistory}
\title{Updates the motion history image by a moving silhouette}
\usage{cv_updateMotionHistory(silhouette, mhi = NULL, timestamp, duration)}
\arguments{
\item{silhouette}{Silhouette mask that has non-zero pixels where the motion occurs.}
\item{mhi}{Motion history image that is updated by the function (single-channel, 32-bit floating-point).}
\item{timestamp}{Current time in milliseconds or other units.}
\item{duration}{Maximal duration of the motion track in the same units as timestamp .}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Updates the motion history image by a moving silhouette.}
\details{
The function updates the motion history image as follows:

That is, MHI pixels where the motion occurs are set to the current timestamp , while the pixels where the motion happened last time a long time ago are cleared.

The function, together with calcMotionGradient and calcGlobalOrientation , implements a motion templates technique described in [66] and [38] .

\strong{C++ 头文件：}\code{#include <opencv2/optflow/motempl.hpp>}
}
\keyword{opencv}
