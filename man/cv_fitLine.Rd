% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fitLine}
\alias{cv_fitLine}
\title{Fits a line to a 2D or 3D point set}
\usage{cv_fitLine(points, distType, param, reps, aeps, dst = NULL)}
\arguments{
\item{points}{Input vector of 2D or 3D points, stored in std::vector<> or Mat.}
\item{distType}{Distance used by the M-estimator, see DistanceTypes}
\item{param}{Numerical parameter ( C ) for some types of distances. If it is 0, an optimal value is chosen.}
\item{reps}{Sufficient accuracy for the radius (distance between the coordinate origin and the line).}
\item{aeps}{Sufficient accuracy for the angle. 0.01 would be a good default value for reps and aeps.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Fits a line to a 2D or 3D point set.}
\details{
The function fitLine fits a line to a 2D or 3D point set by minimizing where is a distance between the point, the line and is a distance function, one of the following:

\itemize{
\item DIST_L2
\item DIST_L1
\item DIST_L12
\item DIST_FAIR
\item DIST_WELSCH
\item DIST_HUBER
}

The algorithm is based on the M-estimator ( http://en.wikipedia.org/wiki/M-estimator ) technique that iteratively fits the line using the weighted least-squares algorithm. After each iteration the weights are adjusted to be inversely proportional to .

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
