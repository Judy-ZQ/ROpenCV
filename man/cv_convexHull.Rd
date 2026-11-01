% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_convexHull}
\alias{cv_convexHull}
\title{Finds the convex hull of a point set}
\usage{cv_convexHull(points, clockwise = FALSE, returnPoints = TRUE, dst = NULL)}
\arguments{
\item{points}{Input 2D point set, stored in std::vector or Mat.}
\item{clockwise}{Orientation flag. If it is true, the output convex hull is oriented clockwise. Otherwise, it is oriented counter-clockwise. The assumed coordinate system has its X axis pointing to the right, and its Y axis pointing upwards.}
\item{returnPoints}{Operation flag. In case of a matrix, when the flag is true, the function returns convex hull points. Otherwise, it returns indices of the convex hull points. When the output array is std::vector, the flag is ignored, and the output depends on the type of the vector: std::vector<int> implies returnPoints=false, std::vector<Point> implies returnPoints=true.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Finds the convex hull of a point set.}
\details{
The function cv::convexHull finds the convex hull of a 2D point set using the Sklansky's algorithm [248] that has O(N logN) complexity in the current implementation.

Check the corresponding tutorial for more details.

useful links:

https://www.learnopencv.com/convex-hull-using-opencv-in-python-and-c/

\strong{注意：}\code{points} and \code{hull} should be different arrays, inplace processing isn't supported.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
