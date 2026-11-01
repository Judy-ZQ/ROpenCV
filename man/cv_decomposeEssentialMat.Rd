% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_decomposeEssentialMat}
\alias{cv_decomposeEssentialMat}
\title{Decompose an essential matrix to possible rotations and translation}
\usage{cv_decomposeEssentialMat(E, R1 = NULL, R2 = NULL, t = NULL)}
\arguments{
\item{E}{The input essential matrix.}
\item{R1}{One possible rotation matrix.}
\item{R2}{Another possible rotation matrix.}
\item{t}{One possible translation.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Decompose an essential matrix to possible rotations and translation.}
\details{
This function decomposes the essential matrix E using svd decomposition [118]. In general, four possible poses exist for the decomposition of E. They are , , , .

If E gives the epipolar constraint between the image points in the first image and in second image, then any of the tuples , , , is a change of basis from the first camera's coordinate system to the second camera's coordinate system. However, by decomposing E, one can only get the direction of the translation. For this reason, the translation t is returned with unit length.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
