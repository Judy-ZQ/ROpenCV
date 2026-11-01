% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawDetectedCornersCharuco}
\alias{cv_drawDetectedCornersCharuco}
\title{Draws a set of Charuco corners}
\usage{cv_drawDetectedCornersCharuco(image = NULL, charucoCorners,
    charucoIds = NULL, cornerColor = c(255, 0, 0))}
\arguments{
\item{image}{input/output image. It must have 1 or 3 channels. The number of channels is not altered.}
\item{charucoCorners}{vector of detected charuco corners}
\item{charucoIds}{list of identifiers for each corner in charucoCorners}
\item{cornerColor}{color of the square surrounding each corner}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws a set of Charuco corners.}
\details{
This function draws a set of detected Charuco corners. If identifiers vector is provided, it also draws the id of each corner.

\strong{C++ 头文件：}\code{#include <opencv2/objdetect/charuco_detector.hpp>}
}
\keyword{opencv}
