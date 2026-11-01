% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_setIdentity}
\alias{cv_setIdentity}
\title{Initializes a scaled identity matrix}
\usage{cv_setIdentity(mtx = NULL, s = 1)}
\arguments{
\item{mtx}{matrix to initialize (not necessarily square).}
\item{s}{value to assign to diagonal elements.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Initializes a scaled identity matrix.}
\details{
The function cv::setIdentity initializes a scaled identity matrix:

The function can also be emulated using the matrix initializers and the matrix expressions:

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
