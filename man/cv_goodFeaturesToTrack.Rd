% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_goodFeaturesToTrack}
\alias{cv_goodFeaturesToTrack}
\title{Determines strong corners on an image}
\usage{cv_goodFeaturesToTrack(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Determines strong corners on an image.}
\details{
The function finds the most prominent corners in the image or in the specified image region, as described in [246]

\itemize{
\item Function calculates the corner quality measure at every source image pixel using the cornerMinEigenVal or cornerHarris .
\item Function performs a non-maximum suppression (the local maximums in 3 x 3 neighborhood are retained).
\item The corners with the minimal eigenvalue less than are rejected.
\item The remaining corners are sorted by the quality measure in the descending order.
\item Function throws away each corner for which there is a stronger corner at a distance less than maxDistance.
}

The function can be used to initialize a point-based tracker of an object.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void goodFeaturesToTrack(InputArray image, OutputArray corners, int maxCorners, double qualityLevel, double minDistance, InputArray mask = noArray(), int blockSize = 3, bool useHarrisDetector = false, double k = 0.04)

void goodFeaturesToTrack(InputArray image, OutputArray corners, int maxCorners, double qualityLevel, double minDistance, InputArray mask, int blockSize, int gradientSize, bool useHarrisDetector = false, double k = 0.04)

}

\strong{注意：}If the function is called with different values A and B of the parameter qualityLevel , and A > B, the vector of returned corners with qualityLevel=A will be the prefix of the output vector with qualityLevel=B .

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_cornerMinEigenVal}}、\code{\link{cv_cornerHarris}}、\code{\link{cv_calcOpticalFlowPyrLK}}、\code{\link{cv_estimateRigidTransform}}}
\keyword{opencv}
