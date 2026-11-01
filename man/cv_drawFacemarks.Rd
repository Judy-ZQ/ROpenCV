% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawFacemarks}
\alias{cv_drawFacemarks}
\title{Utility to draw the detected facial landmark points}
\usage{cv_drawFacemarks(image = NULL, points, color = c(255, 0, 0))}
\arguments{
\item{image}{The input image to be processed.}
\item{points}{Contains the data of points which will be drawn.}
\item{color}{The color of points in BGR format represented by cv::Scalar.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Utility to draw the detected facial landmark points.}
\details{
Example of usage

\strong{C++ 头文件：}\code{#include <opencv2/face/facemark_train.hpp>}
}
\keyword{opencv}
