% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_GradientPaillouY}
\alias{cv_GradientPaillouY}
\title{Applies Paillou filter to an image}
\usage{cv_GradientPaillouY(op, alpha, omega, dst = NULL)}
\arguments{
\item{op}{Source CV_8U(S) or CV_16U(S), 1-channel or 3-channels image.}
\item{alpha}{double see paper}
\item{omega}{double see paper}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies Paillou filter to an image.}
\details{
For more details about this implementation, please see [212]

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/paillou_filter.hpp>}
}
\seealso{\code{\link{cv_GradientPaillouX}}、\code{\link{cv_GradientPaillouY}}}
\keyword{opencv}
