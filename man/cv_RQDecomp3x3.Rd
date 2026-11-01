% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_RQDecomp3x3}
\alias{cv_RQDecomp3x3}
\title{Computes an RQ decomposition of 3x3 matrices}
\usage{cv_RQDecomp3x3(src, mtxR = NULL, mtxQ = NULL, Qx = NULL, Qy = NULL, Qz = NULL)}
\arguments{
\item{src}{3x3 input matrix.}
\item{mtxR}{Output 3x3 upper-triangular matrix.}
\item{mtxQ}{Output 3x3 orthogonal matrix.}
\item{Qx}{Optional output 3x3 rotation matrix around x-axis.}
\item{Qy}{Optional output 3x3 rotation matrix around y-axis.}
\item{Qz}{Optional output 3x3 rotation matrix around z-axis.}
}
\value{数值向量。}
\description{Computes an RQ decomposition of 3x3 matrices.}
\details{
The function computes a RQ decomposition using the given rotations. This function is used in decomposeProjectionMatrix to decompose the left 3x3 submatrix of a projection matrix into a camera and a rotation matrix.

It optionally returns three rotation matrices, one for each axis, and the three Euler angles in degrees (as the return value) that could be used in OpenGL. Note, there is always more than one sequence of rotations about the three principal axes that results in the same orientation of an object, e.g. see [249] . Returned three rotation matrices and corresponding three Euler angles are only one of the possible solutions.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
