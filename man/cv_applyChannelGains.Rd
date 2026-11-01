% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_applyChannelGains}
\alias{cv_applyChannelGains}
\title{Implements an efficient fixed-point approximation for applying channel gains, which is the last step of multiple white balance algorithms}
\usage{cv_applyChannelGains(src, gainB, gainG, gainR, dst = NULL)}
\arguments{
\item{src}{Input three-channel image in the BGR color space (either CV_8UC3 or CV_16UC3)}
\item{gainB}{gain for the B channel}
\item{gainG}{gain for the G channel}
\item{gainR}{gain for the R channel}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Implements an efficient fixed-point approximation for applying channel gains, which is the last step of multiple white balance algorithms.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/xphoto/white_balance.hpp>}
}
\keyword{opencv}
