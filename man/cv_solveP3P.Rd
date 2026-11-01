% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_solveP3P}
\alias{cv_solveP3P}
\title{Finds an object pose from 3 3D-2D point correspondences}
\usage{cv_solveP3P(objectPoints, imagePoints, cameraMatrix, distCoeffs, flags,
    rvecs = NULL, tvecs = NULL)}
\arguments{
\item{objectPoints}{Array of object points in the object coordinate space, 3x3 1-channel or 1x3/3x1 3-channel. vector<Point3f> can be also passed here.}
\item{imagePoints}{Array of corresponding image points, 3x2 1-channel or 1x3/3x1 2-channel. vector<Point2f> can be also passed here.}
\item{cameraMatrix}{Input camera intrinsic matrix .}
\item{distCoeffs}{Input vector of distortion coefficients . If the vector is NULL/empty, the zero distortion coefficients are assumed.}
\item{flags}{Method for solving a P3P problem: SOLVEPNP_P3P Method is based on the paper of X.S. Gao, X.-R. Hou, J. Tang, H.-F. Chang "Complete Solution Classification for the Perspective-Three-Point Problem" ([99]). SOLVEPNP_AP3P Method is based on the paper of T. Ke and S. Roumeliotis. "An Efficient Algebraic Solution to the Perspective-Three-Point Problem" ([145]).}
\item{rvecs}{Output rotation vectors (see Rodrigues ) that, together with tvecs, brings points from the model coordinate system to the camera coordinate system. A P3P problem has up to 4 solutions.}
\item{tvecs}{Output translation vectors.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Finds an object pose from 3 3D-2D point correspondences.}
\details{
The function estimates the object pose given 3 object points, their corresponding image projections, as well as the camera intrinsic matrix and the distortion coefficients.

\strong{注意：}The solutions are sorted by reprojection errors (lowest to highest).

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
