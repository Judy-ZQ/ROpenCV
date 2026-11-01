% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getValidDisparityROI}
\alias{cv_getValidDisparityROI}
\title{computes valid disparity ROI from the valid ROIs of the rectified images (that are returned by stereoRectify)}
\usage{cv_getValidDisparityROI(roi1, roi2, minDisparity, numberOfDisparities,
    blockSize)}
\arguments{
\item{roi1}{含义见下方 C++ 签名。}
\item{roi2}{含义见下方 C++ 签名。}
\item{minDisparity}{含义见下方 C++ 签名。}
\item{numberOfDisparities}{含义见下方 C++ 签名。}
\item{blockSize}{含义见下方 C++ 签名。}
}
\value{长度为 4 的整数向量 \code{c(x, y, width, height)}。}
\description{computes valid disparity ROI from the valid ROIs of the rectified images (that are returned by stereoRectify)}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/stereo.hpp>}
}
\keyword{opencv}
