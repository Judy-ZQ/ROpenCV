% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findHomography}
\alias{cv_findHomography}
\title{Finds a perspective transformation between two planes}
\usage{cv_findHomography(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{\code{cvMat} 图像。}
\description{Finds a perspective transformation between two planes.}
\details{
The function finds and returns the perspective transformation between the source and the destination planes:

so that the back-projection error

is minimized. If the parameter method is set to the default value 0, the function uses all the point pairs to compute an initial homography estimate with a simple least-squares scheme.

However, if not all of the point pairs ( , ) fit the rigid perspective transformation (that is, there are some outliers), this initial estimate will be poor. In this case, you can use one of the three robust methods. The methods RANSAC, LMeDS and RHO try many different random subsets of the corresponding point pairs (of four pairs each, collinear pairs are discarded), estimate the homography matrix using this subset and a simple least-squares algorithm, and then compute the quality/goodness of the computed homography (which is the number of inliers for RANSAC or the least median re-projection error for LMeDS). The best subset is then used to produce the initial estimate of the homography matrix and the mask of inliers/outliers.

Regardless of the method, robust or not, the computed homography matrix is refined further (using inliers only in case of a robust method) with the Levenberg-Marquardt method to reduce the re-projection error even more.

The methods RANSAC and RHO can handle practically any ratio of outliers but need a threshold to distinguish inliers from outliers. The method LMeDS does not need any threshold but it works correctly only when there are more than 50\% of inliers. Finally, if there are no outliers and the noise is rather small, use the default method (method=0).

The function is used to find initial intrinsic and extrinsic matrices. Homography matrix is determined up to a scale. If is non-zero, the matrix is normalized so that .

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Mat findHomography(InputArray srcPoints, InputArray dstPoints, int method = 0, double ransacReprojThreshold = 3, OutputArray mask = noArray(), const int maxIters = 2000, const double confidence = 0.995)

Mat findHomography(InputArray srcPoints, InputArray dstPoints, OutputArray mask, const UsacParams & params)

}

\strong{注意：}Whenever an matrix cannot be estimated, an empty one will be returned.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\seealso{\code{\link{cv_getAffineTransform}}、\code{\link{cv_estimateAffine2D}}、\code{\link{cv_estimateAffinePartial2D}}、\code{\link{cv_getPerspectiveTransform}}、\code{\link{cv_warpPerspective}}、\code{\link{cv_perspectiveTransform}}}
\keyword{opencv}
