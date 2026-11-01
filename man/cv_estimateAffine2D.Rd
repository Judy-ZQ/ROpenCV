% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_estimateAffine2D}
\alias{cv_estimateAffine2D}
\title{Computes an optimal affine transformation between two 2D point sets}
\usage{cv_estimateAffine2D(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{\code{cvMat} 图像。}
\description{Computes an optimal affine transformation between two 2D point sets.}
\details{
It computes

The function estimates an optimal 2D affine transformation between two 2D point sets using the selected robust algorithm.

The computed transformation is then refined further (using only inliers) with the Levenberg-Marquardt method to reduce the re-projection error even more.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Mat estimateAffine2D(InputArray from, InputArray to, OutputArray inliers = noArray(), int method = RANSAC, double ransacReprojThreshold = 3, size_t maxIters = 2000, double confidence = 0.99, size_t refineIters = 10)

Mat estimateAffine2D(InputArray pts1, InputArray pts2, OutputArray inliers, const UsacParams & params)

}

\strong{注意：}The RANSAC method can handle practically any ratio of outliers but needs a threshold to distinguish inliers from outliers. The method LMeDS does not need any threshold but it works correctly only when there are more than 50\% of inliers.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\seealso{\code{\link{cv_estimateAffinePartial2D}}、\code{\link{cv_getAffineTransform}}}
\keyword{opencv}
