% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findEllipses}
\alias{cv_findEllipses}
\title{Finds ellipses fastly in an image using projective invariant pruning}
\usage{cv_findEllipses(image, scoreThreshold = 0.7, reliabilityThreshold = 0.5,
    centerDistanceThreshold = 0.05, dst = NULL)}
\arguments{
\item{image}{input image, could be gray or color.}
\item{scoreThreshold}{float, the threshold of ellipse score.}
\item{reliabilityThreshold}{float, the threshold of reliability.}
\item{centerDistanceThreshold}{float, the threshold of center distance.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Finds ellipses fastly in an image using projective invariant pruning.}
\details{
The function detects ellipses in images using projective invariant pruning. For more details about this implementation, please see [137] Jia, Qi et al, (2017). A Fast Ellipse Detector using Projective Invariant Pruning. IEEE Transactions on Image Processing.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/find_ellipses.hpp>}
}
\keyword{opencv}
