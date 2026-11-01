% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findCirclesGrid}
\alias{cv_findCirclesGrid}
\title{Finds centers in the grid of circles}
\usage{cv_findCirclesGrid(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{Finds centers in the grid of circles.}
\details{
The function attempts to determine whether the input image contains a grid of circles. If it is, the function locates centers of the circles. The function returns a non-zero value if all of the centers have been found and they have been placed in a certain order (row by row, left to right in every row). Otherwise, if the function fails to find all the corners or reorder them, it returns 0.

Sample usage of detecting and drawing the centers of circles: :

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

bool findCirclesGrid(InputArray image, Size patternSize, OutputArray centers, int flags, const Ptr<FeatureDetector> & blobDetector, const CirclesGridFinderParameters& parameters)

bool findCirclesGrid(InputArray image, Size patternSize, OutputArray centers, int flags = CALIB_CB_SYMMETRIC_GRID, const Ptr<FeatureDetector> & blobDetector = SimpleBlobDetector::create())

}

\strong{注意：}The function requires white space (like a square-thick border, the wider the better) around the board to make the detection more robust in various environments.

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\keyword{opencv}
