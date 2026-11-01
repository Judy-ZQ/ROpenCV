% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calibrationMatrixValues}
\alias{cv_calibrationMatrixValues}
\title{Computes useful camera characteristics from the camera intrinsic matrix}
\usage{cv_calibrationMatrixValues(cameraMatrix, imageSize, apertureWidth,
    apertureHeight)}
\arguments{
\item{cameraMatrix}{Input camera intrinsic matrix that can be estimated by calibrateCamera or stereoCalibrate .}
\item{imageSize}{Input image size in pixels.}
\item{apertureWidth}{Physical width in mm of the sensor.}
\item{apertureHeight}{Physical height in mm of the sensor.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Computes useful camera characteristics from the camera intrinsic matrix.}
\details{
The function computes various useful camera characteristics from the previously estimated camera matrix.

\strong{注意：}Do keep in mind that the unity measure 'mm' stands for whatever unit of measure one chooses for the chessboard pitch (it can thus be any value).

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\keyword{opencv}
