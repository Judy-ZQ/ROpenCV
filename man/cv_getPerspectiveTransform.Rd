% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getPerspectiveTransform}
\alias{cv_getPerspectiveTransform}
\title{Calculates a perspective transform from four pairs of the corresponding points}
\usage{cv_getPerspectiveTransform(src, dst, solveMethod = DECOMP_LU)}
\arguments{
\item{src}{Coordinates of quadrangle vertices in the source image.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{solveMethod}{method passed to cv::solve (DecompTypes)}
}
\value{\code{cvMat} 图像。}
\description{Calculates a perspective transform from four pairs of the corresponding points.}
\details{
The function calculates the matrix of a perspective transform so that:

where

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_findHomography}}、\code{\link{cv_warpPerspective}}、\code{\link{cv_perspectiveTransform}}}
\keyword{opencv}
