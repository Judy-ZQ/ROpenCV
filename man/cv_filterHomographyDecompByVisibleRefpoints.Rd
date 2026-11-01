% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_filterHomographyDecompByVisibleRefpoints}
\alias{cv_filterHomographyDecompByVisibleRefpoints}
\title{Filters homography decompositions based on additional information}
\usage{cv_filterHomographyDecompByVisibleRefpoints(rotations, normals, beforePoints,
    afterPoints, pointsMask = NULL, dst = NULL)}
\arguments{
\item{rotations}{Vector of rotation matrices.}
\item{normals}{Vector of plane normal matrices.}
\item{beforePoints}{Vector of (rectified) visible reference points before the homography is applied}
\item{afterPoints}{Vector of (rectified) visible reference points after the homography is applied}
\item{pointsMask}{optional Mat/Vector of 8u type representing the mask for the inliers as given by the findHomography function}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Filters homography decompositions based on additional information.}
\details{
This function is intended to filter the output of the decomposeHomographyMat based on additional information as described in [181] . The summary of the method: the decomposeHomographyMat function returns 2 unique solutions and their "opposites" for a total of 4 solutions. If we have access to the sets of points visible in the camera frame before and after the homography transformation is applied, we can determine which are the true potential solutions and which are the opposites by verifying which homographies are consistent with all visible reference points being in front of the camera. The inputs are left unchanged; the filtered solution set is returned as indices into the existing one.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
