% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_segmentMotion}
\alias{cv_segmentMotion}
\title{Splits a motion history image into a few parts corresponding to separate independent motions (for example, left hand, right hand)}
\usage{cv_segmentMotion(mhi, timestamp, segThresh, segmask = NULL)}
\arguments{
\item{mhi}{Motion history image.}
\item{timestamp}{Current time in milliseconds or other units.}
\item{segThresh}{Segmentation threshold that is recommended to be equal to the interval between motion history "steps" or greater.}
\item{segmask}{Image where the found mask should be stored, single-channel, 32-bit floating-point.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Splits a motion history image into a few parts corresponding to separate independent motions (for example, left hand, right hand).}
\details{
The function finds all of the motion segments and marks them in segmask with individual values (1,2,...). It also computes a vector with ROIs of motion connected components. After that the motion direction for every component can be calculated with calcGlobalOrientation using the extracted mask of the particular component.

\strong{C++ 头文件：}\code{#include <opencv2/optflow/motempl.hpp>}
}
\keyword{opencv}
