% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fisheye_solvePnP}
\alias{cv_fisheye_solvePnP}
\title{Finds an object pose from 3D-2D point correspondences for fisheye camera moodel}
\usage{cv_fisheye_solvePnP(objectPoints, imagePoints, cameraMatrix, distCoeffs,
    useExtrinsicGuess = FALSE, flags = SOLVEPNP_ITERATIVE,
    criteria = c(6, 10, 1e-08), rvec = NULL, tvec = NULL)}
\arguments{
\item{objectPoints}{Array of object points in the object coordinate space, Nx3 1-channel or 1xN/Nx1 3-channel, where N is the number of points. vector<Point3d> can be also passed here.}
\item{imagePoints}{Array of corresponding image points, Nx2 1-channel or 1xN/Nx1 2-channel, where N is the number of points. vector<Point2d> can be also passed here.}
\item{cameraMatrix}{Input camera intrinsic matrix .}
\item{distCoeffs}{Input vector of distortion coefficients (4x1/1x4).}
\item{useExtrinsicGuess}{Parameter used for SOLVEPNP_ITERATIVE. If true (1), the function uses the provided rvec and tvec values as initial approximations of the rotation and translation vectors, respectively, and further optimizes them.}
\item{flags}{Method for solving a PnP problem: see calib3d_solvePnP_flags This function returns the rotation and the translation vectors that transform a 3D point expressed in the object coordinate frame to the camera coordinate frame, using different methods: P3P methods (SOLVEPNP_P3P, SOLVEPNP_AP3P): need 4 input points to return a unique solution. SOLVEPNP_IPPE Input points must be >= 4 and object points must be coplanar. SOLVEPNP_IPPE_SQUARE Special case suitable for marker pose estimation. Number of input points must be 4. Object points must be defined in the following order: point 0: [-squareLength / 2, squareLength / 2, 0] point 1: [ squareLength / 2, squareLength / 2, 0] point 2: [ squareLength / 2, -squareLength / 2, 0] point 3: [-squareLength / 2, -squareLength / 2, 0] for all the other flags, number of input points must be >= 4 and object points can be in any configuration.}
\item{criteria}{Termination criteria for internal undistortPoints call. The function interally undistorts points with undistortPoints and call cv::solvePnP, thus the input are very similar. Check there and Perspective-n-Points is described in Perspective-n-Point (PnP) pose computation for more information.}
\item{rvec}{Output rotation vector (see Rodrigues ) that, together with tvec, brings points from the model coordinate system to the camera coordinate system.}
\item{tvec}{Output translation vector.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{Finds an object pose from 3D-2D point correspondences for fisheye camera moodel.}
\keyword{opencv}
