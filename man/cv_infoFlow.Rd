% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_infoFlow}
\alias{cv_infoFlow}
\title{Compute alpha matte of an object in an image}
\usage{cv_infoFlow(image, tmap, dst = NULL)}
\arguments{
\item{image}{Input RGB image}
\item{tmap}{Input greyscale trimap image}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Compute alpha matte of an object in an image.}
\details{
The function infoFlow performs alpha matting on a RGB image using a greyscale trimap image, and outputs a greyscale alpha matte image. The output alpha matte can be used to softly extract the foreground object from a background image. Examples can be found in the samples directory.

\strong{C++ 头文件：}\code{#include <opencv2/alphamat.hpp>}
}
\keyword{opencv}
