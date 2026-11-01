% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_registerCameras}
\alias{cv_registerCameras}
\title{Calibrates a camera pair set up}
\usage{cv_registerCameras(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Calibrates a camera pair set up. This function finds the extrinsic parameters between the two cameras.}
\details{
The function estimates the transformation between two cameras similar to stereo pair calibration. The principle follows closely to stereoCalibrate. To understand the problem of estimating the relative pose between a camera pair, please refer to the description there. The difference for this function is that, camera intrinsics are not optimized and two cameras are not required to have overlapping fields of view as long as they are observing the same calibration target and the absolute positions of each object point are known. The above illustration shows an example where such a case may become relevant. Additionally, it supports a camera pair with the mixed model (pinhole / fisheye). Similarly to calibrateCamera, the function minimizes the total re-projection error for all the points in all the available views from both cameras.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

double registerCameras(InputArrayOfArrays objectPoints1, InputArrayOfArrays objectPoints2, InputArrayOfArrays imagePoints1, InputArrayOfArrays imagePoints2, InputArray cameraMatrix1, InputArray distCoeffs1, CameraModel cameraModel1, InputArray cameraMatrix2, InputArray distCoeffs2, CameraModel cameraModel2, InputOutputArray R, InputOutputArray T, OutputArray E, OutputArray F, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, OutputArray perViewErrors, int flags = 0, TermCriteria criteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 100, 1e-6))

double registerCameras(InputArrayOfArrays objectPoints1, InputArrayOfArrays objectPoints2, InputArrayOfArrays imagePoints1, InputArrayOfArrays imagePoints2, InputArray cameraMatrix1, InputArray distCoeffs1, CameraModel cameraModel1, InputArray cameraMatrix2, InputArray distCoeffs2, CameraModel cameraModel2, InputOutputArray R, InputOutputArray T, OutputArray E, OutputArray F, OutputArray perViewErrors, int flags = 0, TermCriteria criteria = TermCriteria(TermCriteria::COUNT+TermCriteria::EPS, 100, 1e-6))

}

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\seealso{\code{\link{cv_calibrateCamera}}、\code{\link{cv_stereoCalibrate}}}
\keyword{opencv}
