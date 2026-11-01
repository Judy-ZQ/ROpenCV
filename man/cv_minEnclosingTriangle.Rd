% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_minEnclosingTriangle}
\alias{cv_minEnclosingTriangle}
\title{Finds a triangle of minimum area enclosing a 2D point set and returns its area}
\usage{cv_minEnclosingTriangle(points, dst = NULL)}
\arguments{
\item{points}{Input vector of 2D points with depth CV_32S or CV_32F, stored in std::vector<> or Mat}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Finds a triangle of minimum area enclosing a 2D point set and returns its area.}
\details{
The function finds a triangle of minimum area enclosing the given set of 2D points and returns its area. The output for a given 2D point set is shown in the image below. 2D points are depicted in red* and the enclosing triangle in yellow.

The implementation of the algorithm is based on O'Rourke's [211] and Klee and Laskowski's [148] papers. O'Rourke provides a algorithm for finding the minimal enclosing triangle of a 2D convex polygon with n vertices. Since the minEnclosingTriangle function takes a 2D point set as input an additional preprocessing step of computing the convex hull of the 2D point set is required. The complexity of the convexHull function is which is higher than . Thus the overall complexity of the function is .

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
