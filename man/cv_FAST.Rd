% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_FAST}
\alias{cv_FAST}
\title{Detects corners using the FAST algorithm}
\usage{cv_FAST(image, threshold, nonmaxSuppression = TRUE, type = TYPE_9_16)}
\arguments{
\item{image}{grayscale image where keypoints (corners) are detected.}
\item{threshold}{threshold on difference between intensity of the central pixel and pixels of a circle around this pixel.}
\item{nonmaxSuppression}{if true, non-maximum suppression is applied to detected keypoints (corners).}
\item{type}{one of the three neighborhoods as defined in the paper: FastFeatureDetector::TYPE_9_16, FastFeatureDetector::TYPE_7_12, FastFeatureDetector::TYPE_5_8}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Detects corners using the FAST algorithm.}
\details{
Detects corners using the FAST algorithm by [229] .

Check the corresponding tutorial for more details.

\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
}
\keyword{opencv}
