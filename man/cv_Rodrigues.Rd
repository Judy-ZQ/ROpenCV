% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_Rodrigues}
\alias{cv_Rodrigues}
\title{Converts a rotation matrix to a rotation vector or vice versa}
\usage{cv_Rodrigues(src, dst = NULL, jacobian = NULL)}
\arguments{
\item{src}{Input rotation vector (3x1 or 1x3) or rotation matrix (3x3).}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{jacobian}{Optional output Jacobian matrix, 3x9 or 9x3, which is a matrix of partial derivatives of the output array components with respect to the input array components.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Converts a rotation matrix to a rotation vector or vice versa.}
\details{
Inverse transformation can be also done easily, since

A rotation vector is a convenient and most compact representation of a rotation matrix (since any rotation matrix has just 3 degrees of freedom). The representation is used in the global 3D geometry optimization procedures like calibrateCamera, stereoCalibrate, or solvePnP .

\strong{注意：}More information about the computation of the derivative of a 3D rotation matrix with respect to its exponential coordinate can be found in: A Compact Formula for the Derivative of a 3-D Rotation in Exponential Coordinates, Guillermo Gallego, Anthony J. Yezzi [98] Useful information on SE(3) and Lie Groups can be found in: A tutorial on SE(3) transformation parameterizations and on-manifold optimization, Jose-Luis Blanco [29] Lie Groups for 2D and 3D Transformation, Ethan Eade [78] A micro Lie theory for state estimation in robotics, Joan Solà, Jérémie Deray, Dinesh Atchuthan [250]

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
