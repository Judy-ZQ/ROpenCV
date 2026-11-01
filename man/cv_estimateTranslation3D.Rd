% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_estimateTranslation3D}
\alias{cv_estimateTranslation3D}
\title{Computes an optimal translation between two 3D point sets}
\usage{cv_estimateTranslation3D(src, dst, ransacThreshold = 3, confidence = 0.99,
    out = NULL, inliers = NULL)}
\arguments{
\item{src}{First input 3D point set containing .}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{ransacThreshold}{Maximum reprojection error in the RANSAC algorithm to consider a point as an inlier.}
\item{confidence}{Confidence level, between 0 and 1, for the estimated transformation. Anything between 0.95 and 0.99 is usually good enough. Values too close to 1 can slow down the estimation significantly. Values lower than 0.8-0.9 can result in an incorrectly estimated transformation.}
\item{out}{Output 3D translation vector of the form}
\item{inliers}{Output vector indicating which points are inliers (1-inlier, 0-outlier).}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Computes an optimal translation between two 3D point sets.}
\details{
It computes

The function estimates an optimal 3D translation between two 3D point sets using the RANSAC algorithm.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
