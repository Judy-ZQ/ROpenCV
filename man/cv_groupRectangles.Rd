% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_groupRectangles}
\alias{cv_groupRectangles}
\title{Groups the object candidate rectangles}
\usage{cv_groupRectangles(rectList = NULL, groupThreshold, eps = 0.2)}
\arguments{
\item{rectList}{Input/output vector of rectangles. Output vector includes retained and grouped rectangles. (The Python list is not modified in place.)}
\item{groupThreshold}{Minimum possible number of rectangles minus 1. The threshold is used in a group of rectangles to retain it.}
\item{eps}{Relative difference between sides of the rectangles to merge them into a group.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Groups the object candidate rectangles.}
\details{
The function is a wrapper for the generic function partition . It clusters all the input rectangles using the rectangle equivalence criteria that combines rectangles with similar sizes and similar locations. The similarity is defined by eps. When eps=0 , no clustering is done at all. If , all the rectangles are put in one cluster. Then, the small clusters containing less than or equal to groupThreshold rectangles are rejected. In each other cluster, the average rectangle is computed and put into the output rectangle list.

\strong{C++ 头文件：}\code{#include <opencv2/xobjdetect.hpp>}
}
\keyword{opencv}
