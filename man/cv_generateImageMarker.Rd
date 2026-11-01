% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_generateImageMarker}
\alias{cv_generateImageMarker}
\title{Generate a canonical marker image}
\usage{cv_generateImageMarker(dictionary, id, sidePixels, borderBits = 1, dst = NULL)}
\arguments{
\item{dictionary}{dictionary of markers indicating the type of markers}
\item{id}{identifier of the marker that will be returned. It has to be a valid id in the specified dictionary.}
\item{sidePixels}{size of the image in pixels}
\item{borderBits}{width of the marker border.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Generate a canonical marker image.}
\details{
This function returns a marker image in its canonical form (i.e. ready to be printed)

\strong{C++ 头文件：}\code{#include <opencv2/objdetect/aruco_detector.hpp>}
}
\keyword{opencv}
