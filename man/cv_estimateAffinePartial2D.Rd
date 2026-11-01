% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_estimateAffinePartial2D}
\alias{cv_estimateAffinePartial2D}
\title{Computes an optimal limited affine transformation with 4 degrees of freedom between two 2D point sets}
\usage{cv_estimateAffinePartial2D(from, to, method = RANSAC,
    ransacReprojThreshold = 3, maxIters = 2000, confidence = 0.99,
    refineIters = 10, dst = NULL)}
\arguments{
\item{from}{First input 2D point set.}
\item{to}{Second input 2D point set.}
\item{method}{Robust method used to compute transformation. The following methods are possible: RANSAC - RANSAC-based robust method LMEDS - Least-Median robust method RANSAC is the default method.}
\item{ransacReprojThreshold}{Maximum reprojection error in the RANSAC algorithm to consider a point as an inlier. Applies only to RANSAC.}
\item{maxIters}{The maximum number of robust method iterations.}
\item{confidence}{Confidence level, between 0 and 1, for the estimated transformation. Anything between 0.95 and 0.99 is usually good enough. Values too close to 1 can slow down the estimation significantly. Values lower than 0.8-0.9 can result in an incorrectly estimated transformation.}
\item{refineIters}{Maximum number of iterations of refining algorithm (Levenberg-Marquardt). Passing 0 will disable refining, so the output matrix will be output of robust method.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{\code{cv::Mat} 对应的 R 对象。}
\description{Computes an optimal limited affine transformation with 4 degrees of freedom between two 2D point sets.}
\details{
The function estimates an optimal 2D affine transformation with 4 degrees of freedom limited to combinations of translation, rotation, and uniform scaling. Uses the selected algorithm for robust estimation.

The computed transformation is then refined further (using only inliers) with the Levenberg-Marquardt method to reduce the re-projection error even more.

Estimated transformation matrix is:

Where is the rotation angle, the scaling factor and are translations in axes respectively.

\strong{注意：}The RANSAC method can handle practically any ratio of outliers but need a threshold to distinguish inliers from outliers. The method LMeDS does not need any threshold but it works correctly only when there are more than 50\% of inliers.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\seealso{\code{\link{cv_estimateAffine2D}}、\code{\link{cv_getAffineTransform}}}
\keyword{opencv}
