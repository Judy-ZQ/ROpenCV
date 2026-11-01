% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_equalizeHist}
\alias{cv_equalizeHist}
\title{Equalizes the histogram of a grayscale image}
\usage{cv_equalizeHist(src, dst = NULL)}
\arguments{
\item{src}{Source 8-bit single channel image.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Equalizes the histogram of a grayscale image.}
\details{
The function equalizes the histogram of the input image using the following algorithm:

\itemize{
\item Calculate the histogram for src .
\item Normalize the histogram so that the sum of histogram bins is 255.
\item Compute the integral of the histogram:
\item Transform the image using as a look-up table:
}

The algorithm normalizes the brightness and increases the contrast of the image.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
