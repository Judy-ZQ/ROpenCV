% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_recoverPose}
\alias{cv_recoverPose}
\title{Recovers the relative camera rotation and the translation from corresponding points in two images from two different cameras, using chirali}
\usage{cv_recoverPose(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Recovers the relative camera rotation and the translation from corresponding points in two images from two different cameras, using chirality check. Returns the number of inliers that pass the check.}
\details{
This function decomposes an essential matrix using decomposeEssentialMat and then verifies possible pose hypotheses by doing chirality check. The chirality check means that the triangulated 3D points should have positive depth. Some details can be found in [209].

This function can be used to process the output E and mask from findEssentialMat. In this scenario, points1 and points2 are the same input for findEssentialMat.:

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

int recoverPose(InputArray points1, InputArray points2, InputArray cameraMatrix1, InputArray distCoeffs1, InputArray cameraMatrix2, InputArray distCoeffs2, OutputArray E, OutputArray R, OutputArray t, int method = cv::RANSAC, double prob = 0.999, double threshold = 1.0, InputOutputArray mask = noArray())

int recoverPose(InputArray E, InputArray points1, InputArray points2, InputArray cameraMatrix, OutputArray R, OutputArray t, InputOutputArray mask = noArray())

int recoverPose(InputArray E, InputArray points1, InputArray points2, OutputArray R, OutputArray t, double focal = 1.0, Point2d pp = Point2d(0, 0), InputOutputArray mask = noArray())

int recoverPose(InputArray E, InputArray points1, InputArray points2, InputArray cameraMatrix, OutputArray R, OutputArray t, double distanceThresh, InputOutputArray mask = noArray(), OutputArray triangulatedPoints = noArray())

}

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
