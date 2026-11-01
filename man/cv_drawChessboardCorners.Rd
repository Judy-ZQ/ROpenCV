% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawChessboardCorners}
\alias{cv_drawChessboardCorners}
\title{Renders the detected chessboard corners}
\usage{cv_drawChessboardCorners(image = NULL, patternSize, corners, patternWasFound)}
\arguments{
\item{image}{Destination image. It must be an 8-bit color image.}
\item{patternSize}{Number of inner corners per a chessboard row and column (patternSize = cv::Size(points_per_row,points_per_column)).}
\item{corners}{Array of detected corners, the output of findChessboardCorners.}
\item{patternWasFound}{Parameter indicating whether the complete board was found or not. The return value of findChessboardCorners should be passed here.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Renders the detected chessboard corners.}
\details{
The function draws individual chessboard corners detected either as red circles if the board was not found, or as colored corners connected with lines if the board was found.

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\keyword{opencv}
