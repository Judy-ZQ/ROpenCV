% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_inpaint}
\alias{cv_inpaint}
\title{Restores the selected region in an image using the region neighborhood}
\usage{cv_inpaint(src, inpaintMask, inpaintRadius, flags, dst = NULL)}
\arguments{
\item{src}{Input 8-bit, 16-bit unsigned or 32-bit float 1-channel or 8-bit 3-channel image.}
\item{inpaintMask}{Inpainting mask, 8-bit 1-channel image. Non-zero pixels indicate the area that needs to be inpainted.}
\item{inpaintRadius}{Radius of a circular neighborhood of each point inpainted that is considered by the algorithm.}
\item{flags}{Inpainting method that could be cv::INPAINT_NS or cv::INPAINT_TELEA}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Restores the selected region in an image using the region neighborhood.}
\details{
The function reconstructs the selected image area from the pixel near the area boundary. The function may be used to remove dust and scratches from a scanned photo, or to remove undesirable objects from still images or video. See http://en.wikipedia.org/wiki/Inpainting for more details.

\strong{注意：}An example using the inpainting technique can be found at opencv_source_code/samples/cpp/inpaint.cpp (Python) An example using the inpainting technique can be found at opencv_source_code/samples/python/inpaint.py

\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
