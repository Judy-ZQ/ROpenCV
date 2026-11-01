% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_colorMatchTemplate}
\alias{cv_colorMatchTemplate}
\title{Compares a color template against overlapped color image regions}
\usage{cv_colorMatchTemplate(img, templ, dst = NULL)}
\arguments{
\item{img}{Image where the search is running. It must be 3 channels image}
\item{templ}{Searched template. It must be not greater than the source image and have 3 channels}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Compares a color template against overlapped color image regions.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/color_match.hpp>}
}
\keyword{opencv}
