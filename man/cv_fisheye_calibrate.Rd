% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fisheye_calibrate}
\alias{cv_fisheye_calibrate}
\title{Performs camera calibration}
\usage{cv_fisheye_calibrate(objectPoints, imagePoints, image_size, K = NULL,
    D = NULL, flags = 0, criteria = c(5, 100, 2.22044604925031e-16),
    rvecs = NULL, tvecs = NULL)}
\arguments{
\item{objectPoints}{vector of vectors of calibration pattern points in the calibration pattern coordinate space.}
\item{imagePoints}{vector of vectors of the projections of calibration pattern points. imagePoints.size and objectPoints.size and imagePoints[i].size must be equal to objectPoints[i].size for each i.}
\item{image_size}{Size of the image used only to initialize the camera intrinsic matrix.}
\item{K}{Output 3x3 floating-point camera intrinsic matrix . If cv::CALIB_USE_INTRINSIC_GUESS is specified, some or all of fx, fy, cx, cy must be initialized before calling the function.}
\item{D}{Output vector of distortion coefficients .}
\item{flags}{Different flags that may be zero or a combination of the following values: cv::CALIB_USE_INTRINSIC_GUESS cameraMatrix contains valid initial values of fx, fy, cx, cy that are optimized further. Otherwise, (cx, cy) is initially set to the image center ( imageSize is used), and focal distances are computed in a least-squares fashion. cv::CALIB_RECOMPUTE_EXTRINSIC Extrinsic will be recomputed after each iteration of intrinsic optimization. cv::CALIB_CHECK_COND The functions will check validity of condition number. cv::CALIB_FIX_SKEW Skew coefficient (alpha) is set to zero and stay zero. cv::CALIB_FIX_K1,..., cv::CALIB_FIX_K4 Selected distortion coefficients are set to zeros and stay zero. cv::CALIB_FIX_PRINCIPAL_POINT The principal point is not changed during the global optimization. It stays at the center or at a different location specified when cv::CALIB_USE_INTRINSIC_GUESS is set too. cv::CALIB_FIX_FOCAL_LENGTH The focal length is not changed during the global optimization. It is the or the provided , when cv::CALIB_USE_INTRINSIC_GUESS is set too.}
\item{criteria}{Termination criteria for the iterative optimization algorithm.}
\item{rvecs}{Output vector of rotation vectors (see Rodrigues ) estimated for each pattern view. That is, each k-th rotation vector together with the corresponding k-th translation vector (see the next output parameter description) brings the calibration pattern from the model coordinate space (in which object points are specified) to the world coordinate space, that is, a real position of the calibration pattern in the k-th pattern view (k=0.. M -1).}
\item{tvecs}{Output vector of translation vectors estimated for each pattern view.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Performs camera calibration.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\keyword{opencv}
