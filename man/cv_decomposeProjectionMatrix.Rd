% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_decomposeProjectionMatrix}
\alias{cv_decomposeProjectionMatrix}
\title{Decomposes a projection matrix into a rotation matrix and a camera intrinsic matrix}
\usage{cv_decomposeProjectionMatrix(projMatrix, cameraMatrix = NULL,
    rotMatrix = NULL, transVect = NULL, rotMatrixX = NULL, rotMatrixY = NULL,
    rotMatrixZ = NULL, eulerAngles = NULL)}
\arguments{
\item{projMatrix}{3x4 input projection matrix P.}
\item{cameraMatrix}{Output 3x3 camera intrinsic matrix .}
\item{rotMatrix}{Output 3x3 external rotation matrix R.}
\item{transVect}{Output 4x1 translation vector T.}
\item{rotMatrixX}{Optional 3x3 rotation matrix around x-axis.}
\item{rotMatrixY}{Optional 3x3 rotation matrix around y-axis.}
\item{rotMatrixZ}{Optional 3x3 rotation matrix around z-axis.}
\item{eulerAngles}{Optional three-element vector containing three Euler angles of rotation in degrees.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Decomposes a projection matrix into a rotation matrix and a camera intrinsic matrix.}
\details{
The function computes a decomposition of a projection matrix into a calibration and a rotation matrix and the position of a camera.

It optionally returns three rotation matrices, one for each axis, and three Euler angles that could be used in OpenGL. Note, there is always more than one sequence of rotations about the three principal axes that results in the same orientation of an object, e.g. see [249] . Returned three rotation matrices and corresponding three Euler angles are only one of the possible solutions.

The function is based on RQDecomp3x3 .

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
