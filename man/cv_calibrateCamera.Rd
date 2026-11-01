% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calibrateCamera}
\alias{cv_calibrateCamera}
\title{Finds the camera intrinsic and extrinsic parameters from several views of a calibration pattern}
\usage{cv_calibrateCamera(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Finds the camera intrinsic and extrinsic parameters from several views of a calibration pattern.}
\details{
The function estimates the intrinsic camera parameters and extrinsic parameters for each of the views. The algorithm is based on [320] and [37] . The coordinates of 3D object points and their corresponding 2D projections in each view must be specified. That may be achieved by using an object with known geometry and easily detectable feature points. Such an object is called a calibration rig or calibration pattern, and OpenCV has built-in support for a chessboard as a calibration rig (see findChessboardCorners). Currently, initialization of intrinsic parameters (when CALIB_USE_INTRINSIC_GUESS is not set) is only implemented for planar calibration patterns (where Z-coordinates of the object points must be all zeros). 3D calibration rigs can also be used as long as initial cameraMatrix is provided.

The algorithm performs the following steps:

\itemize{
\item Compute the initial intrinsic parameters (the option only available for planar calibration patterns) or read them from the input parameters. The distortion coefficients are all set to zeros initially unless some of CALIB_FIX_K? are specified.
\item Estimate the initial camera pose as if the intrinsic parameters have been already known. This is done using solvePnP .
\item Run the global Levenberg-Marquardt optimization algorithm to minimize the reprojection error, that is, the total sum of squared distances between the observed feature points imagePoints and the projected (using the current estimates for camera parameters and the poses) object points objectPoints. See projectPoints for details.
}

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

double calibrateCamera(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints, Size imageSize, InputOutputArray cameraMatrix, InputOutputArray distCoeffs, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, OutputArray stdDeviationsIntrinsics, OutputArray stdDeviationsExtrinsics, OutputArray perViewErrors, int flags = 0, TermCriteria criteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON))

double calibrateCamera(InputArrayOfArrays objectPoints, InputArrayOfArrays imagePoints, Size imageSize, InputOutputArray cameraMatrix, InputOutputArray distCoeffs, OutputArrayOfArrays rvecs, OutputArrayOfArrays tvecs, int flags = 0, TermCriteria criteria = TermCriteria( TermCriteria::COUNT + TermCriteria::EPS, 100, DBL_EPSILON))

}

\strong{注意：}If you use a non-square (i.e. non-N-by-N) grid and findChessboardCorners for calibration, and calibrateCamera returns bad values (zero distortion coefficients, and very far from the image center, and/or large differences between and (ratios of 10:1 or more)), then you are probably using patternSize=cvSize(rows,cols) instead of using patternSize=cvSize(cols,rows) in findChessboardCorners. The function may throw exceptions, if unsupported combination of parameters is provided or the system is underconstrained.

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\seealso{\code{\link{cv_calibrateCameraRO}}、\code{\link{cv_findChessboardCorners}}、\code{\link{cv_solvePnP}}、\code{\link{cv_initCameraMatrix2D}}、\code{\link{cv_stereoCalibrate}}、\code{\link{cv_undistort}}}
\keyword{opencv}
