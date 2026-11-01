% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_xphoto_inpaint}
\alias{cv_xphoto_inpaint}
\title{The function implements different single-image inpainting algorithms}
\usage{cv_xphoto_inpaint(src, mask, dst = NULL, algorithmType)}
\arguments{
\item{src}{source image INPAINT_SHIFTMAP: it could be of any type and any number of channels from 1 to 4. In case of 3- and 4-channels images the function expect them in CIELab colorspace or similar one, where first color component shows intensity, while second and third shows colors. Nonetheless you can try any colorspaces. INPAINT_FSR_BEST or INPAINT_FSR_FAST: 1-channel grayscale or 3-channel BGR image.}
\item{mask}{mask (CV_8UC1), where non-zero pixels indicate valid image area, while zero pixels indicate area to be inpainted}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{algorithmType}{see xphoto::InpaintTypes}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{The function implements different single-image inpainting algorithms.}
\details{
See the original papers [120] (Shiftmap) or [105] and [238] (FSR) for details.

\strong{C++ 头文件：}\code{#include <opencv2/xphoto/inpainting.hpp>}
}
\keyword{opencv}
