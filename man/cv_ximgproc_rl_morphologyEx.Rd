% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_ximgproc_rl_morphologyEx}
\alias{cv_ximgproc_rl_morphologyEx}
\title{Applies a morphological operation to a run-length encoded binary image}
\usage{cv_ximgproc_rl_morphologyEx(rlSrc, op, rlKernel,
    bBoundaryOnForErosion = TRUE, anchor = c(0, 0), dst = NULL)}
\arguments{
\item{rlSrc}{input image}
\item{op}{all operations supported by cv::morphologyEx (except cv::MORPH_HITMISS)}
\item{rlKernel}{kernel}
\item{bBoundaryOnForErosion}{indicates whether pixel outside the image boundary are assumed to be on for erosion operations (True: works in the same way as the default of cv::erode, False: is a little faster)}
\item{anchor}{position of the anchor within the element; default value (0, 0) is usually the element center.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies a morphological operation to a run-length encoded binary image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/run_length_morphology.hpp>}
}
\keyword{opencv}
