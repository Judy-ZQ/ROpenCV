% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_projectPoints}
\alias{cv_projectPoints}
\title{Projects 3D points to an image plane}
\usage{cv_projectPoints(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Projects 3D points to an image plane.}
\details{
The function computes the 2D projections of 3D points to the image plane, given intrinsic and extrinsic camera parameters. Optionally, the function computes Jacobians -matrices of partial derivatives of image points coordinates (as functions of all the input parameters) with respect to the particular parameters, intrinsic and/or extrinsic. The Jacobians are used during the global optimization in calibrateCamera, solvePnP, and stereoCalibrate. The function itself can also be used to compute a re-projection error, given the current intrinsic and extrinsic parameters.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void projectPoints(InputArray objectPoints, InputArray rvec, InputArray tvec, InputArray cameraMatrix, InputArray distCoeffs, OutputArray imagePoints, OutputArray jacobian = noArray(), double aspectRatio = 0)

void projectPoints(InputArray objectPoints, InputArray rvec, InputArray tvec, InputArray cameraMatrix, InputArray distCoeffs, OutputArray imagePoints, OutputArray dpdr, OutputArray dpdt, OutputArray dpdf = noArray(), OutputArray dpdc = noArray(), OutputArray dpdk = noArray(), OutputArray dpdo = noArray(), double aspectRatio = 0.)

}

\strong{注意：}By setting rvec = tvec = , or by setting cameraMatrix to a 3x3 identity matrix, or by passing zero distortion coefficients, one can get various useful partial cases of the function. This means, one can compute the distorted coordinates for a sparse set of points or apply a perspective transformation (and also compute the derivatives) in the ideal zero-distortion setup.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
