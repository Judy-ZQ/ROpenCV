% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_copyTo}
\alias{cv_copyTo}
\title{cv_copyTo}
\usage{cv_copyTo(src, mask = NULL, dst = NULL)}
\arguments{
\item{src}{source matrix.}
\item{mask}{Operation mask of the same size as *this. Its non-zero elements indicate which matrix elements need to be copied. The mask has to be of type CV_8U, CV_8S or CV_Bool and can have 1 or multiple channels.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{R 侧入口 \code{cv_copyTo}，对应 C++ 的 \code{cv::copyTo}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
