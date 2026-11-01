% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_insertChannel}
\alias{cv_insertChannel}
\title{Inserts a single channel to dst (coi is 0-based index)}
\usage{cv_insertChannel(src, dst = NULL, coi)}
\arguments{
\item{src}{input array}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{coi}{index of channel for insertion}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Inserts a single channel to dst (coi is 0-based index)}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_mixChannels}}、\code{\link{cv_merge}}}
\keyword{opencv}
