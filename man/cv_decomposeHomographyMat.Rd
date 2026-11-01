% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_decomposeHomographyMat}
\alias{cv_decomposeHomographyMat}
\title{Decompose a homography matrix to rotation(s), translation(s) and plane normal(s)}
\usage{cv_decomposeHomographyMat(H, K, rotations = NULL, translations = NULL,
    normals = NULL)}
\arguments{
\item{H}{The input homography matrix between two images.}
\item{K}{The input camera intrinsic matrix.}
\item{rotations}{Array of rotation matrices.}
\item{translations}{Array of translation matrices.}
\item{normals}{Array of plane normal matrices.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Decompose a homography matrix to rotation(s), translation(s) and plane normal(s).}
\details{
This function extracts relative camera motion between two views of a planar object and returns up to four mathematical solution tuples of rotation, translation, and plane normal. The decomposition of the homography matrix H is described in detail in [181].

If the homography H, induced by the plane, gives the constraint

on the source image points and the destination image points , then the tuple of rotations[k] and translations[k] is a change of basis from the source camera's coordinate system to the destination camera's coordinate system. However, by decomposing H, one can only get the translation normalized by the (typically unknown) depth of the scene, i.e. its direction but with normalized length.

If point correspondences are available, at least two solutions may further be invalidated, by applying positive depth constraint, i.e. all points must be in front of the camera.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
