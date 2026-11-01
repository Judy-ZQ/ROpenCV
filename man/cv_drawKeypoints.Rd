% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawKeypoints}
\alias{cv_drawKeypoints}
\title{Draws keypoints}
\usage{cv_drawKeypoints(image, keypoints, outImage = NULL, color = -1,
    flags = DEFAULT)}
\arguments{
\item{image}{Source image.}
\item{keypoints}{Keypoints from the source image.}
\item{outImage}{Output image. Its content depends on the flags value defining what is drawn in the output image. See possible flags bit values below.}
\item{color}{Color of keypoints.}
\item{flags}{Flags setting drawing features. Possible flags bit values are defined by DrawMatchesFlags. See details above in drawMatches .}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws keypoints.}
\details{
\strong{注意：}For Python API, flags are modified as cv.DRAW_MATCHES_FLAGS_DEFAULT, cv.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS, cv.DRAW_MATCHES_FLAGS_DRAW_OVER_OUTIMG, cv.DRAW_MATCHES_FLAGS_NOT_DRAW_SINGLE_POINTS

\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
}
\keyword{opencv}
