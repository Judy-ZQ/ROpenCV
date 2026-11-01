% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createFastLineDetector}
\alias{cv_createFastLineDetector}
\title{Creates a smart pointer to a FastLineDetector object and initializes it}
\usage{cv_createFastLineDetector(length_threshold = 10,
    distance_threshold = 1.414213562, canny_th1 = 50, canny_th2 = 50,
    canny_aperture_size = 3, do_merge = FALSE)}
\arguments{
\item{length_threshold}{Segment shorter than this will be discarded}
\item{distance_threshold}{A point placed from a hypothesis line segment farther than this will be regarded as an outlier}
\item{canny_th1}{First threshold for hysteresis procedure in Canny}
\item{canny_th2}{Second threshold for hysteresis procedure in Canny}
\item{canny_aperture_size}{Aperturesize for the sobel operator in Canny . If zero, Canny is not applied and the input image is taken as an edge image.}
\item{do_merge}{If true, incremental merging of segments will be performed}
}
\value{\code{Ptr<FastLineDetector>} 对应的 R 对象。}
\description{Creates a smart pointer to a FastLineDetector object and initializes it.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/fast_line_detector.hpp>}
}
\keyword{opencv}
