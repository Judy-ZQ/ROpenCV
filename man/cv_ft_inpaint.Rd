% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_ft_inpaint}
\alias{cv_ft_inpaint}
\title{Image inpainting}
\usage{cv_ft_inpaint(image, mask = NULL, radius, function_, algorithm, dst = NULL)}
\arguments{
\item{image}{Input image.}
\item{mask}{Mask used for unwanted area marking.}
\item{radius}{Radius of the basic function.}
\item{function_}{含义见下方 C++ 签名。}
\item{algorithm}{Algorithm could be one of the following: \code{ft::ONE_STEP} One step algorithm. \code{ft::MULTI_STEP} This algorithm automaticaly increases radius of the basic function. \code{ft::ITERATIVE} Iterative algorithm running in more steps using partial computations.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Image inpainting.}
\details{
This function provides inpainting technique based on the fuzzy mathematic.

\strong{注意：}The algorithms are described in paper [216].

\strong{C++ 头文件：}\code{#include <opencv2/fuzzy/fuzzy_image.hpp>}
}
\keyword{opencv}
