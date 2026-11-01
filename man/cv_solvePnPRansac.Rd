% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_solvePnPRansac}
\alias{cv_solvePnPRansac}
\title{Finds an object pose from 3D-2D point correspondences using the RANSAC scheme}
\usage{cv_solvePnPRansac(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{Finds an object pose from 3D-2D point correspondences using the RANSAC scheme.}
\details{
The function estimates an object pose given a set of object points, their corresponding image projections, as well as the camera intrinsic matrix and the distortion coefficients. This function finds such a pose that minimizes reprojection error, that is, the sum of squared distances between the observed projections imagePoints and the projected (using projectPoints ) objectPoints. The use of RANSAC makes the function resistant to outliers.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

bool solvePnPRansac(InputArray objectPoints, InputArray imagePoints, InputArray cameraMatrix, InputArray distCoeffs, OutputArray rvec, OutputArray tvec, bool useExtrinsicGuess = false, int iterationsCount = 100, float reprojectionError = 8.0, double confidence = 0.99, OutputArray inliers = noArray(), int flags = SOLVEPNP_ITERATIVE)

bool solvePnPRansac(InputArray objectPoints, InputArray imagePoints, InputOutputArray cameraMatrix, InputArray distCoeffs, OutputArray rvec, OutputArray tvec, OutputArray inliers, const UsacParams & params = UsacParams())

}

\strong{注意：}An example of how to use solvePNPRansac for object detection can be found at opencv_source_code/samples/cpp/tutorial_code/3d/real_time_pose_estimation/ The default method used to estimate the camera pose for the Minimal Sample Sets step is SOLVEPNP_EPNP. Exceptions are: if you choose SOLVEPNP_P3P or SOLVEPNP_AP3P, these methods will be used. if the number of input points is equal to 4, SOLVEPNP_P3P is used. The method used to estimate the camera pose using all the inliers is defined by the flags parameters unless it is equal to SOLVEPNP_P3P or SOLVEPNP_AP3P. In this case, the method SOLVEPNP_EPNP will be used instead.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
