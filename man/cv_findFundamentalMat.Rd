% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findFundamentalMat}
\alias{cv_findFundamentalMat}
\title{Calculates a fundamental matrix from the corresponding points in two images}
\usage{cv_findFundamentalMat(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{\code{cvMat} 图像。}
\description{Calculates a fundamental matrix from the corresponding points in two images.}
\details{
The epipolar geometry is described by the following equation:

where is a fundamental matrix, and are corresponding points in the first and the second images, respectively.

The function calculates the fundamental matrix using one of four methods listed above and returns the found fundamental matrix. Normally just one matrix is found. But in case of the 7-point algorithm, the function may return up to 3 solutions ( matrix that stores all 3 matrices sequentially).

The calculated fundamental matrix may be passed further to computeCorrespondEpilines that finds the epipolar lines corresponding to the specified points. It can also be passed to stereoRectifyUncalibrated to compute the rectification transformation. :

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Mat findFundamentalMat(InputArray points1, InputArray points2, int method, double ransacReprojThreshold, double confidence, int maxIters, OutputArray mask = noArray())

Mat findFundamentalMat(InputArray points1, InputArray points2, int method = FM_RANSAC, double ransacReprojThreshold = 3., double confidence = 0.99, OutputArray mask = noArray())

Mat findFundamentalMat(InputArray points1, InputArray points2, OutputArray mask, const UsacParams & params)

}

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
