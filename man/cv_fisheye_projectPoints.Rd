% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fisheye_projectPoints}
\alias{cv_fisheye_projectPoints}
\title{Projects points using fisheye model}
\usage{cv_fisheye_projectPoints(objectPoints, rvec, tvec, K, D, alpha = 0,
    imagePoints = NULL, jacobian = NULL)}
\arguments{
\item{objectPoints}{Array of object points, 1xN/Nx1 3-channel (or vector<Point3f> ), where N is the number of points in the view.}
\item{rvec}{含义见下方 C++ 签名。}
\item{tvec}{含义见下方 C++ 签名。}
\item{K}{Camera intrinsic matrix .}
\item{D}{Input vector of distortion coefficients .}
\item{alpha}{The skew coefficient.}
\item{imagePoints}{Output array of image points, 2xN/Nx2 1-channel or 1xN/Nx1 2-channel, or vector<Point2f>.}
\item{jacobian}{Optional output 2Nx15 jacobian matrix of derivatives of image points with respect to components of the focal lengths, coordinates of the principal point, distortion coefficients, rotation vector, translation vector, and the skew. In the old interface different components of the jacobian are returned via different output parameters.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Projects points using fisheye model.}
\details{
The function computes projections of 3D points to the image plane given intrinsic and extrinsic camera parameters. Optionally, the function computes Jacobians - matrices of partial derivatives of image points coordinates (as functions of all the input parameters) with respect to the particular parameters, intrinsic and/or extrinsic.
}
\keyword{opencv}
