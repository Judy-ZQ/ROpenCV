% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcMotionGradient}
\alias{cv_calcMotionGradient}
\title{Calculates a gradient orientation of a motion history image}
\usage{cv_calcMotionGradient(mhi, delta1, delta2, apertureSize = 3, mask = NULL,
    orientation = NULL)}
\arguments{
\item{mhi}{Motion history single-channel floating-point image.}
\item{delta1}{Minimal (or maximal) allowed difference between mhi values within a pixel neighborhood.}
\item{delta2}{Maximal (or minimal) allowed difference between mhi values within a pixel neighborhood. That is, the function finds the minimum and maximum mhi values over neighborhood of each pixel and marks the motion orientation at as valid only if}
\item{apertureSize}{Aperture size of the Sobel operator.}
\item{mask}{Output mask image that has the type CV_8UC1 and the same size as mhi . Its non-zero elements mark pixels where the motion gradient data is correct.}
\item{orientation}{Output motion gradient orientation image that has the same type and the same size as mhi . Each pixel of the image is a motion orientation, from 0 to 360 degrees.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates a gradient orientation of a motion history image.}
\details{
The function calculates a gradient orientation at each pixel as:

In fact, fastAtan2 and phase are used so that the computed angle is measured in degrees and covers the full range 0..360. Also, the mask is filled to indicate pixels where the computed angle is valid.

\strong{注意：}(Python) An example on how to perform a motion template technique can be found at opencv_source_code/samples/python2/motempl.py

\strong{C++ 头文件：}\code{#include <opencv2/optflow/motempl.hpp>}
}
\keyword{opencv}
