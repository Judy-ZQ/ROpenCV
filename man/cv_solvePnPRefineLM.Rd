% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_solvePnPRefineLM}
\alias{cv_solvePnPRefineLM}
\title{Refine a pose (the translation and the rotation that transform a 3D point expressed in the object coordinate frame to the camera coordinate}
\usage{cv_solvePnPRefineLM(objectPoints, imagePoints, cameraMatrix, distCoeffs,
    rvec = NULL, tvec = NULL, criteria = c(5, 20, 1.1920929e-07))}
\arguments{
\item{objectPoints}{Array of object points in the object coordinate space, Nx3 1-channel or 1xN/Nx1 3-channel, where N is the number of points. vector<Point3d> can also be passed here.}
\item{imagePoints}{Array of corresponding image points, Nx2 1-channel or 1xN/Nx1 2-channel, where N is the number of points. vector<Point2d> can also be passed here.}
\item{cameraMatrix}{Input camera intrinsic matrix .}
\item{distCoeffs}{Input vector of distortion coefficients . If the vector is NULL/empty, the zero distortion coefficients are assumed.}
\item{rvec}{Input/Output rotation vector (see Rodrigues ) that, together with tvec, brings points from the model coordinate system to the camera coordinate system. Input values are used as an initial solution.}
\item{tvec}{Input/Output translation vector. Input values are used as an initial solution.}
\item{criteria}{Criteria when to stop the Levenberg-Marquard iterative algorithm.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Refine a pose (the translation and the rotation that transform a 3D point expressed in the object coordinate frame to the camera coordinate frame) from a 3D-2D point correspondences and starting from an initial solution.}
\details{
The function refines the object pose given at least 3 object points, their corresponding image projections, an initial solution for the rotation and translation vector, as well as the camera intrinsic matrix and the distortion coefficients. The function minimizes the projection error with respect to the rotation and the translation vectors, according to a Levenberg-Marquardt iterative minimization [179] [77] process.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
