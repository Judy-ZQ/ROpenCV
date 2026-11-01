% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_ximgproc_rl_erode}
\alias{cv_ximgproc_rl_erode}
\title{Erodes an run-length encoded binary image by using a specific structuring element}
\usage{cv_ximgproc_rl_erode(rlSrc, rlKernel, bBoundaryOn = TRUE, anchor = c(0, 0),
    dst = NULL)}
\arguments{
\item{rlSrc}{input image}
\item{rlKernel}{kernel}
\item{bBoundaryOn}{indicates whether pixel outside the image boundary are assumed to be on (True: works in the same way as the default of cv::erode, False: is a little faster)}
\item{anchor}{position of the anchor within the element; default value (0, 0) is usually the element center.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Erodes an run-length encoded binary image by using a specific structuring element.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/run_length_morphology.hpp>}
}
\keyword{opencv}
