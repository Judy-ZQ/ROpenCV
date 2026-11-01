% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calibrateCameraRO}
\alias{cv_calibrateCameraRO}
\title{Finds the camera intrinsic and extrinsic parameters from several views of a calibration pattern}
\usage{cv_calibrateCameraRO(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Finds the camera intrinsic and extrinsic parameters from several views of a calibration pattern.}
\details{
This function is an extension of calibrateCamera with the method of releasing object which was proposed in [256]. In many common cases with inaccurate, unmeasured, roughly planar targets (calibration plates), this method can dramatically improve the precision of the estimated camera parameters. Both the object-releasing method and standard method are supported by this function. Use the parameter iFixedPoint for method selection. In the internal implementation, calibrateCamera is a wrapper for this function.

The function estimates the intrinsic camera parameters and extrinsic parameters for each of the views. The algorithm is based on [320], [37] and [256]. See calibrateCamera for other detailed explanations.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

double calibrateCameraRO(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints, Size imageSize, int iFixedPoint, InputOutputArray cameraMatrix, InputOutputArray distCoeffs, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, OutputArray newObjPoints, OutputArray stdDeviationsIntrinsics, OutputArray stdDeviationsExtrinsics, OutputArray stdDeviationsObjPoints, OutputArray perViewErrors, int flags = 0, TermCriteria criteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON))

double calibrateCameraRO(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints, Size imageSize, int iFixedPoint, InputOutputArray cameraMatrix, InputOutputArray distCoeffs, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, OutputArray newObjPoints, int flags = 0, TermCriteria criteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON))

}

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\seealso{\code{\link{cv_calibrateCamera}}、\code{\link{cv_findChessboardCorners}}、\code{\link{cv_solvePnP}}、\code{\link{cv_initCameraMatrix2D}}、\code{\link{cv_stereoCalibrate}}、\code{\link{cv_undistort}}}
\keyword{opencv}
