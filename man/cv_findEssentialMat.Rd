% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findEssentialMat}
\alias{cv_findEssentialMat}
\title{Calculates an essential matrix from the corresponding points in two images}
\usage{cv_findEssentialMat(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{\code{cvMat} 图像。}
\description{Calculates an essential matrix from the corresponding points in two images.}
\details{
This function estimates essential matrix based on the five-point algorithm solver in [209] . [253] is also a related. The epipolar geometry is described by the following equation:

where is an essential matrix, and are corresponding points in the first and the second images, respectively. The result of this function may be passed further to decomposeEssentialMat or recoverPose to recover the relative pose between cameras.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Mat findEssentialMat(InputArray points1, InputArray points2, InputArray cameraMatrix, int method = RANSAC, double prob = 0.999, double threshold = 1.0, int maxIters = 1000, OutputArray mask = noArray())

Mat findEssentialMat(InputArray points1, InputArray points2, double focal = 1.0, Point2d pp = Point2d(0, 0), int method = RANSAC, double prob = 0.999, double threshold = 1.0, int maxIters = 1000, OutputArray mask = noArray())

Mat findEssentialMat(InputArray points1, InputArray points2, InputArray cameraMatrix1, InputArray distCoeffs1, InputArray cameraMatrix2, InputArray distCoeffs2, int method = RANSAC, double prob = 0.999, double threshold = 1.0, OutputArray mask = noArray())

Mat findEssentialMat(InputArray points1, InputArray points2, InputArray cameraMatrix1, InputArray cameraMatrix2, InputArray dist_coeff1, InputArray dist_coeff2, OutputArray mask, const UsacParams & params)

}

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
