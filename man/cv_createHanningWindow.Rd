% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createHanningWindow}
\alias{cv_createHanningWindow}
\title{This function computes a Hanning window coefficients in two dimensions}
\usage{cv_createHanningWindow(dst = NULL, winSize, type)}
\arguments{
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{winSize}{The window size specifications (both width and height must be > 1)}
\item{type}{Created array type}
}
\value{返回输出图像（\code{cvMat}）。}
\description{This function computes a Hanning window coefficients in two dimensions.}
\details{
See (http://en.wikipedia.org/wiki/Hann_function) and (http://en.wikipedia.org/wiki/Window_function) for more information.

An example is shown below:

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
