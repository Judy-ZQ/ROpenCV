% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calibrateHandEye}
\alias{cv_calibrateHandEye}
\title{Computes Hand-Eye calibration: }
\usage{cv_calibrateHandEye(R_gripper2base, t_gripper2base, R_target2cam,
    t_target2cam, method = CALIB_HAND_EYE_TSAI, R_cam2gripper = NULL,
    t_cam2gripper = NULL)}
\arguments{
\item{R_gripper2base}{Rotation part extracted from the homogeneous matrix that transforms a point expressed in the gripper frame to the robot base frame . This is a vector (\code{vector<Mat>}) that contains the rotation, \code{(3x3)} rotation matrices or \code{(3x1)} rotation vectors, for all the transformations from gripper frame to robot base frame.}
\item{t_gripper2base}{Translation part extracted from the homogeneous matrix that transforms a point expressed in the gripper frame to the robot base frame . This is a vector (\code{vector<Mat>}) that contains the \code{(3x1)} translation vectors for all the transformations from gripper frame to robot base frame.}
\item{R_target2cam}{Rotation part extracted from the homogeneous matrix that transforms a point expressed in the target frame to the camera frame . This is a vector (\code{vector<Mat>}) that contains the rotation, \code{(3x3)} rotation matrices or \code{(3x1)} rotation vectors, for all the transformations from calibration target frame to camera frame.}
\item{t_target2cam}{Rotation part extracted from the homogeneous matrix that transforms a point expressed in the target frame to the camera frame . This is a vector (\code{vector<Mat>}) that contains the \code{(3x1)} translation vectors for all the transformations from calibration target frame to camera frame.}
\item{method}{One of the implemented Hand-Eye calibration method, see cv::HandEyeCalibrationMethod}
\item{R_cam2gripper}{Estimated \code{(3x3)} rotation part extracted from the homogeneous matrix that transforms a point expressed in the camera frame to the gripper frame .}
\item{t_cam2gripper}{Estimated \code{(3x1)} translation part extracted from the homogeneous matrix that transforms a point expressed in the camera frame to the gripper frame .}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes Hand-Eye calibration: .}
\details{
The function performs the Hand-Eye calibration using various methods. One approach consists in estimating the rotation then the translation (separable solutions) and the following methods are implemented:

\itemize{
\item R. Tsai, R. Lenz A New Technique for Fully Autonomous and Efficient 3D Robotics Hand/EyeCalibration [275]
\item F. Park, B. Martin Robot Sensor Calibration: Solving AX = XB on the Euclidean Group [213]
\item R. Horaud, F. Dornaika Hand-Eye Calibration [127]
}

Another approach consists in estimating simultaneously the rotation and the translation (simultaneous solutions), with the following implemented methods:

\itemize{
\item N. Andreff, R. Horaud, B. Espiau On-line Hand-Eye Calibration [12]
\item K. Daniilidis Hand-Eye Calibration Using Dual Quaternions [65]
}

The following picture describes the Hand-Eye calibration problem where the transformation between a camera ("eye") mounted on a robot gripper ("hand") has to be estimated. This configuration is called eye-in-hand.

The eye-to-hand configuration consists in a static camera observing a calibration pattern mounted on the robot end-effector. The transformation from the camera to the robot base frame can then be estimated by inputting the suitable transformations to the function, see below.

The calibration procedure is the following:

\itemize{
\item a static calibration pattern is used to estimate the transformation between the target frame and the camera frame
\item the robot gripper is moved in order to acquire several poses
\item for each pose, the homogeneous transformation between the gripper frame and the robot base frame is recorded using for instance the robot kinematics
\item for each pose, the homogeneous transformation between the calibration target frame and the camera frame is recorded using for instance a pose estimation method (PnP) from 2D-3D point correspondences
}

The Hand-Eye calibration procedure returns the following homogeneous transformation

This problem is also known as solving the equation:

\itemize{
\item for an eye-in-hand configuration
\item for an eye-to-hand configuration
}

\strong{注意：}Additional information can be found on this website. A minimum of 2 motions with non parallel rotation axes are necessary to determine the hand-eye transformation. So at least 3 different poses are required, but it is strongly recommended to use many more poses.

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\keyword{opencv}
