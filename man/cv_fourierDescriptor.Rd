% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fourierDescriptor}
\alias{cv_fourierDescriptor}
\title{Fourier descriptors for planed closed curves}
\usage{cv_fourierDescriptor(src, nbElt = -1, nbFD = -1, dst = NULL)}
\arguments{
\item{src}{contour type vector<Point> , vector<Point2f> or vector<Point2d>}
\item{nbElt}{number of rows in dst or getOptimalDFTSize rows if nbElt=-1}
\item{nbFD}{number of FD return in dst dst = [FD(1...nbFD/2) FD(nbFD/2-nbElt+1...:nbElt)]}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Fourier descriptors for planed closed curves.}
\details{
For more details about this implementation, please see [220]

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/fourier_descriptors.hpp>}
}
\keyword{opencv}
