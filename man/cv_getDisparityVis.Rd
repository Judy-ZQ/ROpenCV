% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getDisparityVis}
\alias{cv_getDisparityVis}
\title{Function for creating a disparity map visualization (clamped CV_8U image)}
\usage{cv_getDisparityVis(src, scale = 1, dst = NULL)}
\arguments{
\item{src}{input disparity map (CV_16S depth)}
\item{scale}{disparity map will be multiplied by this value for visualization}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Function for creating a disparity map visualization (clamped CV_8U image)}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/disparity_filter.hpp>}
}
\keyword{opencv}
