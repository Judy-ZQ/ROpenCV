% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_solvePnPGeneric}
\alias{cv_solvePnPGeneric}
\title{Finds an object pose from 3D-2D point correspondences}
\usage{cv_solvePnPGeneric(objectPoints, imagePoints, cameraMatrix, distCoeffs,
    useExtrinsicGuess = FALSE, flags = SOLVEPNP_ITERATIVE, rvec = NULL,
    tvec = NULL, rvecs = NULL, tvecs = NULL, reprojectionError = NULL)}
\arguments{
\item{objectPoints}{Array of object points in the object coordinate space, Nx3 1-channel or 1xN/Nx1 3-channel, where N is the number of points. vector<Point3d> can be also passed here.}
\item{imagePoints}{Array of corresponding image points, Nx2 1-channel or 1xN/Nx1 2-channel, where N is the number of points. vector<Point2d> can be also passed here.}
\item{cameraMatrix}{Input camera intrinsic matrix .}
\item{distCoeffs}{Input vector of distortion coefficients . If the vector is NULL/empty, the zero distortion coefficients are assumed.}
\item{useExtrinsicGuess}{Parameter used for SOLVEPNP_ITERATIVE. If true (1), the function uses the provided rvec and tvec values as initial approximations of the rotation and translation vectors, respectively, and further optimizes them.}
\item{flags}{Method for solving a PnP problem: see calib3d_solvePnP_flags}
\item{rvec}{Rotation vector used to initialize an iterative PnP refinement algorithm, when flag is SOLVEPNP_ITERATIVE and useExtrinsicGuess is set to true.}
\item{tvec}{Translation vector used to initialize an iterative PnP refinement algorithm, when flag is SOLVEPNP_ITERATIVE and useExtrinsicGuess is set to true.}
\item{rvecs}{Vector of output rotation vectors (see Rodrigues ) that, together with tvecs, brings points from the model coordinate system to the camera coordinate system.}
\item{tvecs}{Vector of output translation vectors.}
\item{reprojectionError}{Optional vector of reprojection error, that is the RMS error between the input image points and the 3D object points projected with the estimated pose.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Finds an object pose from 3D-2D point correspondences.}
\details{
This function returns a list of all the possible solutions (a solution is a <rotation vector, translation vector> couple), depending on the number of input points and the chosen method:

\itemize{
\item P3P methods (SOLVEPNP_P3P, SOLVEPNP_AP3P): 3 or 4 input points. Number of returned solutions can be between 0 and 4 with 3 input points.
\item SOLVEPNP_IPPE Input points must be >= 4 and object points must be coplanar. Returns 2 solutions.
\item SOLVEPNP_IPPE_SQUARE Special case suitable for marker pose estimation. Number of input points must be 4 and 2 solutions are returned. Object points must be defined in the following order: point 0: [-squareLength / 2, squareLength / 2, 0]
\item point 1: [ squareLength / 2, squareLength / 2, 0]
\item point 2: [ squareLength / 2, -squareLength / 2, 0]
\item point 3: [-squareLength / 2, -squareLength / 2, 0]
}

More information is described in Perspective-n-Point (PnP) pose computation

\strong{注意：}An example of how to use solvePnP for planar augmented reality can be found at opencv_source_code/samples/python/plane_ar.py If you are using Python: Numpy array slices won't work as input because solvePnP requires contiguous arrays (enforced by the assertion using cv::Mat::checkVector around line 55 of modules/3d/src/solvepnp.cpp version 2.4.9) The P3P algorithm requires image points to be in an array of shape (N,1,2) due to its calling of undistortPoints (around line 75 of modules/3d/src/solvepnp.cpp version 2.4.9) which requires 2-channel information. Thus, given some data D = np.array(...) where D.shape = (N,M), in order to use a subset of it as, e.g., imagePoints, one must effectively copy it into a new array: imagePoints = np.ascontiguousarray(D[:,:2]).reshape((N,1,2)) The methods SOLVEPNP_DLS and SOLVEPNP_UPNP cannot be used as the current implementations are unstable and sometimes give completely wrong results. If you pass one of these two flags, SOLVEPNP_EPNP method will be used instead. The minimum number of points is 4 in the general case. In the case of SOLVEPNP_P3P and SOLVEPNP_AP3P methods, it is required to use exactly 4 points (the first 3 points are used to estimate all the solutions of the P3P problem, the last one is used to retain the best solution that minimizes the reprojection error). With SOLVEPNP_ITERATIVE method and \code{useExtrinsicGuess=true}, the minimum number of points is 3 (3 points are sufficient to compute a pose but there are up to 4 solutions). The initial solution should be close to the global solution to converge. With SOLVEPNP_IPPE input points must be >= 4 and object points must be coplanar. With SOLVEPNP_IPPE_SQUARE this is a special case suitable for marker pose estimation. Number of input points must be 4. Object points must be defined in the following order: point 0: [-squareLength / 2, squareLength / 2, 0] point 1: [ squareLength / 2, squareLength / 2, 0] point 2: [ squareLength / 2, -squareLength / 2, 0] point 3: [-squareLength / 2, -squareLength / 2, 0]

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
