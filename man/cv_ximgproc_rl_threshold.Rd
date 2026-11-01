% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_ximgproc_rl_threshold}
\alias{cv_ximgproc_rl_threshold}
\title{Applies a fixed-level threshold to each array element}
\usage{cv_ximgproc_rl_threshold(src, thresh, type, dst = NULL)}
\arguments{
\item{src}{input array (single-channel).}
\item{thresh}{threshold value.}
\item{type}{thresholding type (only cv::THRESH_BINARY and cv::THRESH_BINARY_INV are supported)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies a fixed-level threshold to each array element.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/run_length_morphology.hpp>}
}
\keyword{opencv}
