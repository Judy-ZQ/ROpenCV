% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_AGAST}
\alias{cv_AGAST}
\title{Detects corners using the AGAST algorithm}
\usage{cv_AGAST(image, threshold, nonmaxSuppression = TRUE, type = OAST_9_16)}
\arguments{
\item{image}{grayscale image where keypoints (corners) are detected.}
\item{threshold}{threshold on difference between intensity of the central pixel and pixels of a circle around this pixel.}
\item{nonmaxSuppression}{if true, non-maximum suppression is applied to detected keypoints (corners).}
\item{type}{one of the four neighborhoods as defined in the paper: AgastFeatureDetector::AGAST_5_8, AgastFeatureDetector::AGAST_7_12d, AgastFeatureDetector::AGAST_7_12s, AgastFeatureDetector::OAST_9_16}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Detects corners using the AGAST algorithm.}
\details{
For non-Intel platforms, there is a tree optimised variant of AGAST with same numerical results. The 32-bit binary tree tables were generated automatically from original code using perl script. The perl script and examples of tree generation are placed in features2d/doc folder. Detects corners using the AGAST algorithm by [180] .

\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
}
\keyword{opencv}
