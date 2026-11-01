% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_demosaicing}
\alias{cv_demosaicing}
\title{main function for all demosaicing processes}
\usage{cv_demosaicing(src, code, dstCn = 0, dst = NULL)}
\arguments{
\item{src}{input image: 8-bit unsigned or 16-bit unsigned.}
\item{code}{Color space conversion code (see the description below).}
\item{dstCn}{number of channels in the destination image; if the parameter is 0, the number of the channels is derived automatically from src and code.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{main function for all demosaicing processes}
\details{
The function can do the following transformations:

\itemize{
\item Demosaicing using bilinear interpolation COLOR_BayerBG2BGR , COLOR_BayerGB2BGR , COLOR_BayerRG2BGR , COLOR_BayerGR2BGR COLOR_BayerBG2GRAY , COLOR_BayerGB2GRAY , COLOR_BayerRG2GRAY , COLOR_BayerGR2GRAY
\item Demosaicing using Variable Number of Gradients. COLOR_BayerBG2BGR_VNG , COLOR_BayerGB2BGR_VNG , COLOR_BayerRG2BGR_VNG , COLOR_BayerGR2BGR_VNG
\item Edge-Aware Demosaicing. COLOR_BayerBG2BGR_EA , COLOR_BayerGB2BGR_EA , COLOR_BayerRG2BGR_EA , COLOR_BayerGR2BGR_EA
\item Demosaicing with alpha channel COLOR_BayerBG2BGRA , COLOR_BayerGB2BGRA , COLOR_BayerRG2BGRA , COLOR_BayerGR2BGRA
}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_cvtColor}}}
\keyword{opencv}
