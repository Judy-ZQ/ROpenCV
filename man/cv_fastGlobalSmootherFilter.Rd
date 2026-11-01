% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fastGlobalSmootherFilter}
\alias{cv_fastGlobalSmootherFilter}
\title{Simple one-line Fast Global Smoother filter call}
\usage{cv_fastGlobalSmootherFilter(guide, src, lambda, sigma_color,
    lambda_attenuation = 0.25, num_iter = 3, dst = NULL)}
\arguments{
\item{guide}{image serving as guide for filtering. It should have 8-bit depth and either 1 or 3 channels.}
\item{src}{source image for filtering with unsigned 8-bit or signed 16-bit or floating-point 32-bit depth and up to 4 channels.}
\item{lambda}{parameter defining the amount of regularization}
\item{sigma_color}{parameter, that is similar to color space sigma in bilateralFilter.}
\item{lambda_attenuation}{internal parameter, defining how much lambda decreases after each iteration. Normally, it should be 0.25. Setting it to 1.0 may lead to streaking artifacts.}
\item{num_iter}{number of iterations used for filtering, 3 is usually enough.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Simple one-line Fast Global Smoother filter call. If you have multiple images to filter with the same guide then use FastGlobalSmootherFilter interface to avoid extra computations.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\keyword{opencv}
