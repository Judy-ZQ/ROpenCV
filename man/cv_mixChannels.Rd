% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_mixChannels}
\alias{cv_mixChannels}
\title{cv_mixChannels}
\usage{cv_mixChannels(src, fromTo, dst = NULL)}
\arguments{
\item{src}{input array or vector of matrices; all of the matrices must have the same size and the same depth.}
\item{fromTo}{array of index pairs specifying which channels are copied and where; fromTo[k*2] is a 0-based index of the input channel in src, fromTo[k*2+1] is an index of the output channel in dst; the continuous channel numbering is used: the first input image channels are indexed from 0 to src[0].channels -1, the second input image channels are indexed from src[0].channels to src[0].channels + src[1].channels -1, and so on, the same scheme is used for the output image channels; as a special case, when fromTo[k*2] is negative, the corresponding output channel is filled with zero .}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{R 侧入口 \code{cv_mixChannels}，对应 C++ 的 \code{cv::mixChannels}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
