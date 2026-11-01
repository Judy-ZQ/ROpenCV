% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_estimateChessboardSharpness}
\alias{cv_estimateChessboardSharpness}
\title{Estimates the sharpness of a detected chessboard}
\usage{cv_estimateChessboardSharpness(image, patternSize, corners,
    rise_distance = 0.8, vertical = FALSE, dst = NULL)}
\arguments{
\item{image}{Gray image used to find chessboard corners}
\item{patternSize}{Size of a found chessboard pattern}
\item{corners}{Corners found by findChessboardCornersSB}
\item{rise_distance}{Rise distance 0.8 means 10\% ... 90\% of the final signal strength}
\item{vertical}{By default edge responses for horizontal lines are calculated}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{长度为 4 的数值向量 \code{c(b, g, r, a)}。}
\description{Estimates the sharpness of a detected chessboard.}
\details{
Image sharpness, as well as brightness, are a critical parameter for accuracte camera calibration. For accessing these parameters for filtering out problematic calibraiton images, this method calculates edge profiles by traveling from black to white chessboard cell centers. Based on this, the number of pixels is calculated required to transit from black to white. This width of the transition area is a good indication of how sharp the chessboard is imaged and should be below ~3.0 pixels.

The optional sharpness array is of type CV_32FC1 and has for each calculated profile one row with the following five entries: 0 = x coordinate of the underlying edge in the image 1 = y coordinate of the underlying edge in the image 2 = width of the transition area (sharpness) 3 = signal strength in the black cell (min brightness) 4 = signal strength in the white cell (max brightness)

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\keyword{opencv}
