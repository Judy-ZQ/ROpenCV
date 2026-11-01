% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_approxPolyDP}
\alias{cv_approxPolyDP}
\title{Approximates a polygonal curve(s) with the specified precision}
\usage{cv_approxPolyDP(curve, epsilon, closed, dst = NULL)}
\arguments{
\item{curve}{Input vector of a 2D point stored in std::vector or Mat}
\item{epsilon}{Parameter specifying the approximation accuracy. This is the maximum distance between the original curve and its approximation.}
\item{closed}{If true, the approximated curve is closed (its first and last vertices are connected). Otherwise, it is not closed.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Approximates a polygonal curve(s) with the specified precision.}
\details{
The function cv::approxPolyDP approximates a curve or a polygon with another curve/polygon with less vertices so that the distance between them is less or equal to the specified precision. It uses the Douglas-Peucker algorithm http://en.wikipedia.org/wiki/Ramer-Douglas-Peucker_algorithm

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
