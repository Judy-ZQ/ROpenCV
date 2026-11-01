% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calibrateRobotWorldHandEye}
\alias{cv_calibrateRobotWorldHandEye}
\title{Computes Robot-World/Hand-Eye calibration: and }
\usage{cv_calibrateRobotWorldHandEye(R_world2cam, t_world2cam, R_base2gripper,
    t_base2gripper, method = CALIB_ROBOT_WORLD_HAND_EYE_SHAH,
    R_base2world = NULL, t_base2world = NULL, R_gripper2cam = NULL,
    t_gripper2cam = NULL)}
\arguments{
\item{R_world2cam}{Rotation part extracted from the homogeneous matrix that transforms a point expressed in the world frame to the camera frame . This is a vector (\code{vector<Mat>}) that contains the rotation, \code{(3x3)} rotation matrices or \code{(3x1)} rotation vectors, for all the transformations from world frame to the camera frame.}
\item{t_world2cam}{Translation part extracted from the homogeneous matrix that transforms a point expressed in the world frame to the camera frame . This is a vector (\code{vector<Mat>}) that contains the \code{(3x1)} translation vectors for all the transformations from world frame to the camera frame.}
\item{R_base2gripper}{Rotation part extracted from the homogeneous matrix that transforms a point expressed in the robot base frame to the gripper frame . This is a vector (\code{vector<Mat>}) that contains the rotation, \code{(3x3)} rotation matrices or \code{(3x1)} rotation vectors, for all the transformations from robot base frame to the gripper frame.}
\item{t_base2gripper}{Rotation part extracted from the homogeneous matrix that transforms a point expressed in the robot base frame to the gripper frame . This is a vector (\code{vector<Mat>}) that contains the \code{(3x1)} translation vectors for all the transformations from robot base frame to the gripper frame.}
\item{method}{One of the implemented Robot-World/Hand-Eye calibration method, see cv::RobotWorldHandEyeCalibrationMethod}
\item{R_base2world}{Estimated \code{(3x3)} rotation part extracted from the homogeneous matrix that transforms a point expressed in the robot base frame to the world frame .}
\item{t_base2world}{Estimated \code{(3x1)} translation part extracted from the homogeneous matrix that transforms a point expressed in the robot base frame to the world frame .}
\item{R_gripper2cam}{Estimated \code{(3x3)} rotation part extracted from the homogeneous matrix that transforms a point expressed in the gripper frame to the camera frame .}
\item{t_gripper2cam}{Estimated \code{(3x1)} translation part extracted from the homogeneous matrix that transforms a point expressed in the gripper frame to the camera frame .}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes Robot-World/Hand-Eye calibration: and .}
\details{
The function performs the Robot-World/Hand-Eye calibration using various methods. One approach consists in estimating the rotation then the translation (separable solutions):

\itemize{
\item M. Shah, Solving the robot-world/hand-eye calibration problem using the kronecker product [245]
}

Another approach consists in estimating simultaneously the rotation and the translation (simultaneous solutions), with the following implemented method:

\itemize{
\item A. Li, L. Wang, and D. Wu, Simultaneous robot-world and hand-eye calibration using dual-quaternions and kronecker product [163]
}

The following picture describes the Robot-World/Hand-Eye calibration problem where the transformations between a robot and a world frame and between a robot gripper ("hand") and a camera ("eye") mounted at the robot end-effector have to be estimated.

The calibration procedure is the following:

\itemize{
\item a static calibration pattern is used to estimate the transformation between the target frame and the camera frame
\item the robot gripper is moved in order to acquire several poses
\item for each pose, the homogeneous transformation between the gripper frame and the robot base frame is recorded using for instance the robot kinematics
\item for each pose, the homogeneous transformation between the calibration target frame (the world frame) and the camera frame is recorded using for instance a pose estimation method (PnP) from 2D-3D point correspondences
}

The Robot-World/Hand-Eye calibration procedure returns the following homogeneous transformations

This problem is also known as solving the equation, with:

\strong{注意：}At least 3 measurements are required (input vectors size must be greater or equal to 3).

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\keyword{opencv}
