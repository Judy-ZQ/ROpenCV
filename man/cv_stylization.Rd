% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_stylization}
\alias{cv_stylization}
\title{Stylization aims to produce digital imagery with a wide variety of effects not focused on photorealism}
\usage{cv_stylization(src, sigma_s = 60, sigma_r = 0.45, dst = NULL)}
\arguments{
\item{src}{Input 8-bit 3-channel image.}
\item{sigma_s}{Range between 0 to 200.}
\item{sigma_r}{Range between 0 to 1.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Stylization aims to produce digital imagery with a wide variety of effects not focused on photorealism. Edge-aware filters are ideal for stylization, as they can abstract regions of low contrast while preserving, or enhancing, high-contrast features.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
