% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getStructuringElement}
\alias{cv_getStructuringElement}
\title{Returns a structuring element of the specified size and shape for morphological operations}
\usage{cv_getStructuringElement(shape, ksize, anchor = c(-1, -1))}
\arguments{
\item{shape}{Element shape that could be one of MorphShapes}
\item{ksize}{Size of the structuring element.}
\item{anchor}{Anchor position within the element. The default value means that the anchor is at the center. Note that only the shape of a cross-shaped element depends on the anchor position. In other cases the anchor just regulates how much the result of the morphological operation is shifted.}
}
\value{\code{cvMat} 图像。}
\description{Returns a structuring element of the specified size and shape for morphological operations.}
\details{
The function constructs and returns the structuring element that can be further passed to erode, dilate or morphologyEx. But you can also construct an arbitrary binary mask yourself and use it as the structuring element.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
