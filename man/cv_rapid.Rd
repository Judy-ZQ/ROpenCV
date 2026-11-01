% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_rapid}
\alias{cv_rapid}
\title{High level function to execute a single rapid [117] iteration}
\usage{cv_rapid(img, num, len, pts3d, tris, K, rvec = NULL, tvec = NULL)}
\arguments{
\item{img}{the video frame}
\item{num}{number of search lines}
\item{len}{search line radius}
\item{pts3d}{the 3D points of the mesh}
\item{tris}{triangle face connectivity}
\item{K}{camera matrix}
\item{rvec}{rotation between mesh and camera. Input values are used as an initial solution.}
\item{tvec}{translation between mesh and camera. Input values are used as an initial solution.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{float}）挂在 \code{attr(x, "value")} 上。}
\description{High level function to execute a single rapid [117] iteration}
\details{
\enumerate{
\item extractControlPoints
\item extractLineBundle
\item findCorrespondencies
\item convertCorrespondencies
\item solvePnPRefineLM
}

\strong{C++ 头文件：}\code{#include <opencv2/rapid.hpp>}
}
\keyword{opencv}
