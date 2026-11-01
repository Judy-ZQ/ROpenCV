% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_correctMatches}
\alias{cv_correctMatches}
\title{Refines coordinates of corresponding points}
\usage{cv_correctMatches(F, points1, points2, newPoints1 = NULL, newPoints2 = NULL)}
\arguments{
\item{F}{3x3 fundamental matrix.}
\item{points1}{1xN array containing the first set of points.}
\item{points2}{1xN array containing the second set of points.}
\item{newPoints1}{The optimized points1.}
\item{newPoints2}{The optimized points2.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Refines coordinates of corresponding points.}
\details{
The function implements the Optimal Triangulation Method (see Multiple View Geometry [118] for details). For each given point correspondence points1[i] <-> points2[i], and a fundamental matrix F, it computes the corrected correspondences newPoints1[i] <-> newPoints2[i] that minimize the geometric error (where is the geometric distance between points and ) subject to the epipolar constraint .

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
