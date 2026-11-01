% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_extractControlPoints}
\alias{cv_extractControlPoints}
\title{Extract control points from the projected silhouette of a mesh}
\usage{cv_extractControlPoints(num, len, pts3d, rvec, tvec, K, imsize, tris,
    ctl2d = NULL, ctl3d = NULL)}
\arguments{
\item{num}{number of control points}
\item{len}{search radius (used to restrict the ROI)}
\item{pts3d}{the 3D points of the mesh}
\item{rvec}{rotation between mesh and camera}
\item{tvec}{translation between mesh and camera}
\item{K}{camera intrinsic}
\item{imsize}{size of the video frame}
\item{tris}{triangle face connectivity}
\item{ctl2d}{the 2D locations of the control points}
\item{ctl3d}{matching 3D points of the mesh}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Extract control points from the projected silhouette of a mesh}
\details{
see [73] Sec 2.1, Step b

\strong{C++ 头文件：}\code{#include <opencv2/rapid.hpp>}
}
\keyword{opencv}
