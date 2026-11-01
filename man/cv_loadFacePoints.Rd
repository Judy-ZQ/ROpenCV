% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_loadFacePoints}
\alias{cv_loadFacePoints}
\title{A utility to load facial landmark information from a given file}
\usage{cv_loadFacePoints(filename, offset = 0, dst = NULL)}
\arguments{
\item{filename}{The filename of file contains the facial landmarks data.}
\item{offset}{An offset value to adjust the loaded points.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{A utility to load facial landmark information from a given file.}
\details{
Example of usage

The annotation file should follow the default format which is

where n_points is the number of points considered and each point is represented as its position in x and y.

\strong{C++ 头文件：}\code{#include <opencv2/face/facemark_train.hpp>}
}
\keyword{opencv}
