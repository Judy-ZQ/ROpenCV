% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_CamShift}
\alias{cv_CamShift}
\title{Finds an object center, size, and orientation}
\usage{cv_CamShift(probImage, window = NULL, criteria)}
\arguments{
\item{probImage}{Back projection of the object histogram. See calcBackProject.}
\item{window}{Initial search window.}
\item{criteria}{Stop criteria for the underlying meanShift. returns (in old interfaces) Number of iterations CAMSHIFT took to converge The function implements the CAMSHIFT object tracking algorithm [39] . First, it finds an object center using meanShift and then adjusts the window size and finds the optimal rotation. The function returns the rotated rectangle structure that includes the object position, size, and orientation. The next position of the search window can be obtained with RotatedRect::boundingRect}
}
\value{长度为 5 的数值向量 \code{c(cx, cy, width, height, angle)}。}
\description{Finds an object center, size, and orientation.}
\details{
See the OpenCV sample camshiftdemo.c that tracks colored objects.

\strong{注意：}(Python) A sample explaining the camshift tracking algorithm can be found at opencv_source_code/samples/python/snippets/camshift.py

\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
}
\keyword{opencv}
