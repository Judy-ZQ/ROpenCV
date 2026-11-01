% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_detailEnhance}
\alias{cv_detailEnhance}
\title{This filter enhances the details of a particular image}
\usage{cv_detailEnhance(src, sigma_s = 10, sigma_r = 0.15, dst = NULL)}
\arguments{
\item{src}{Input 8-bit 3-channel image.}
\item{sigma_s}{Range between 0 to 200.}
\item{sigma_r}{Range between 0 to 1.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{This filter enhances the details of a particular image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
