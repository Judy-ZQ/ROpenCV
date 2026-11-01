% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_HuMoments}
\alias{cv_HuMoments}
\title{Calculates seven Hu invariants}
\usage{cv_HuMoments(m, dst = NULL)}
\arguments{
\item{m}{含义见下方 C++ 签名。}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates seven Hu invariants.}
\details{
The function calculates seven Hu invariants (introduced in [131]; see also http://en.wikipedia.org/wiki/Image_moment) defined as:

where stands for .

These values are proved to be invariants to the image scale, rotation, and reflection except the seventh one, whose sign is changed by reflection. This invariance is proved with the assumption of infinite image resolution. In case of raster images, the computed Hu invariants for the original and transformed images are a bit different.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_matchShapes}}}
\keyword{opencv}
