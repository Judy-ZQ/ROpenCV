% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_approxPolyN}
\alias{cv_approxPolyN}
\title{Approximates a polygon with a convex hull with a specified accuracy and number of sides}
\usage{cv_approxPolyN(curve, nsides, epsilon_percentage = -1, ensure_convex = TRUE,
    dst = NULL)}
\arguments{
\item{curve}{Input vector of a 2D points stored in std::vector or Mat, points must be float or integer.}
\item{nsides}{The parameter defines the number of sides of the result polygon.}
\item{epsilon_percentage}{defines the percentage of the maximum of additional area. If it equals -1, it is not used. Otherwise algorighm stops if additional area is greater than contourArea(_curve) * percentage. If additional area exceeds the limit, algorithm returns as many vertices as there were at the moment the limit was exceeded.}
\item{ensure_convex}{If it is true, algorithm creates a convex hull of input contour. Otherwise input vector should be convex.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Approximates a polygon with a convex hull with a specified accuracy and number of sides.}
\details{
The cv::approxPolyN function approximates a polygon with a convex hull so that the difference between the contour area of the original contour and the new polygon is minimal. It uses a greedy algorithm for contracting two vertices into one in such a way that the additional area is minimal. Straight lines formed by each edge of the convex contour are drawn and the areas of the resulting triangles are considered. Each vertex will lie either on the original contour or outside it.

The algorithm based on the paper [149] .

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
