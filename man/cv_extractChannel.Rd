% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_extractChannel}
\alias{cv_extractChannel}
\title{Extracts a single channel from src (coi is 0-based index)}
\usage{cv_extractChannel(src, coi, dst = NULL)}
\arguments{
\item{src}{input array}
\item{coi}{index of channel to extract}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Extracts a single channel from src (coi is 0-based index)}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_mixChannels}}、\code{\link{cv_split}}}
\keyword{opencv}
