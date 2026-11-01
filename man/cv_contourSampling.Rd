% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_contourSampling}
\alias{cv_contourSampling}
\title{Contour sampling }
\usage{cv_contourSampling(src, nbElt, dst = NULL)}
\arguments{
\item{src}{contour type vector<Point> , vector<Point2f> or vector<Point2d>}
\item{nbElt}{number of points in out contour}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Contour sampling .}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/fourier_descriptors.hpp>}
}
\keyword{opencv}
