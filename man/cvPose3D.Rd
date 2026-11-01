% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvPose3D}
\alias{cvPose3D}
\title{Class, allowing the storage of a pose}
\usage{cvPose3D(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvPose3D} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class, allowing the storage of a pose. The data structure stores both the quaternions and the matrix forms. It supports IO functionality together with various helper methods to work with poses.}
\details{
C++ 类 \code{cv::ppf_match_3d::Pose3D} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/surface_matching/pose_3d.hpp>}
\strong{构造}
\preformatted{
cvPose3D()
cvPose3D(Alpha, ModelIndex = 0, NumVotes = 0)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvPose3D(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{appendPose(IncrementalPose = NULL)}：Left multiplies the existing pose in order to update the transformation.
\item \code{printPose()}
\item \code{updatePose(NewR = NULL, NewT = NULL)}：Updates the pose with the new one.
\item \code{updatePoseQuat(Q = NULL, NewT = NULL)}：Updates the pose with the new one, but this time using quaternions to represent rotation.
}
}
\keyword{opencv}
