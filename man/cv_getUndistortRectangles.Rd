% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getUndistortRectangles}
\alias{cv_getUndistortRectangles}
\title{Returns the inscribed and bounding rectangles for the "undisorted" image plane}
\usage{cv_getUndistortRectangles(cameraMatrix, distCoeffs, R, newCameraMatrix,
    imgSize, inner = NULL, outer = NULL)}
\arguments{
\item{cameraMatrix}{the original camera matrix.}
\item{distCoeffs}{distortion coefficients.}
\item{R}{the optional 3D rotation, applied before projection (see stereoRectify etc.)}
\item{newCameraMatrix}{the new camera matrix after undistortion. Usually it matches the original cameraMatrix.}
\item{imgSize}{the size of the image plane.}
\item{inner}{the output maximal inscribed rectangle of the undistorted image plane.}
\item{outer}{the output minimal bounding rectangle of the undistorted image plane.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Returns the inscribed and bounding rectangles for the "undisorted" image plane.}
\details{
The functions emulates undistortion of the image plane using the specified camera matrix, distortion coefficients, the optional 3D rotation and the "new" camera matrix. In the case of noticeable radial (or maybe pinclusion) distortion the rectangular image plane is distorted and turns into some convex or concave shape. The function computes approximate inscribed (inner) and bounding (outer) rectangles after such undistortion. The rectangles can be used to adjust the newCameraMatrix so that the result image, for example, fits all the data from the original image (at the expense of possibly big "black" areas) or, for another example, gets rid of black areas at the expense some lost data near the original image edge. The function getOptimalNewCameraMatrix uses this function to compute the optimal new camera matrix.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
