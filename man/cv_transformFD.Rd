% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_transformFD}
\alias{cv_transformFD}
\title{transform a contour}
\usage{cv_transformFD(src, t, fdContour = TRUE, dst = NULL)}
\arguments{
\item{src}{contour or Fourier Descriptors if fd is true}
\item{t}{transform Mat given by estimateTransformation}
\item{fdContour}{true src are Fourier Descriptors. fdContour false src is a contour}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{transform a contour}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/fourier_descriptors.hpp>}
}
\keyword{opencv}
