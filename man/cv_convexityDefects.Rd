% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_convexityDefects}
\alias{cv_convexityDefects}
\title{Finds the convexity defects of a contour}
\usage{cv_convexityDefects(contour, convexhull, dst = NULL)}
\arguments{
\item{contour}{Input contour.}
\item{convexhull}{Convex hull obtained using convexHull that should contain indices of the contour points that make the hull.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Finds the convexity defects of a contour.}
\details{
The figure below displays convexity defects of a hand contour:

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
