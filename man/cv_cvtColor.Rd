% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_cvtColor}
\alias{cv_cvtColor}
\title{Converts an image from one color space to another}
\usage{cv_cvtColor(src, code, dstCn = 0, hint = ALGO_HINT_DEFAULT, dst = NULL)}
\arguments{
\item{src}{input image: 8-bit unsigned, 16-bit unsigned ( CV_16UC... ), or single-precision floating-point.}
\item{code}{color space conversion code (see ColorConversionCodes).}
\item{dstCn}{number of channels in the destination image; if the parameter is 0, the number of the channels is derived automatically from src and code.}
\item{hint}{Implementation modfication flags. See AlgorithmHint}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Converts an image from one color space to another.}
\details{
The function converts an input image from one color space to another. In case of a transformation to-from RGB color space, the order of the channels should be specified explicitly (RGB or BGR). Note that the default color format in OpenCV is often referred to as RGB but it is actually BGR (the bytes are reversed). So the first byte in a standard (24-bit) color image will be an 8-bit Blue component, the second byte will be Green, and the third byte will be Red. The fourth, fifth, and sixth bytes would then be the second pixel (Blue, then Green, then Red), and so on.

The conventional ranges for R, G, and B channel values are:

\itemize{
\item 0 to 255 for CV_8U images
\item 0 to 65535 for CV_16U images
\item 0 to 1 for CV_32F images
}

In case of linear transformations, the range does not matter. But in case of a non-linear transformation, an input RGB image should be normalized to the proper value range to get the correct results, for example, for RGB L*u*v* transformation. For example, if you have a 32-bit floating-point image directly converted from an 8-bit image without any scaling, then it will have the 0..255 value range instead of 0..1 assumed by the function. So, before calling cvtColor , you need first to scale the image down:

If you use cvtColor with 8-bit images, the conversion will have some information lost. For many applications, this will not be noticeable but it is recommended to use 32-bit images in applications that need the full range of colors or that convert an image before an operation and then convert back.

If conversion adds the alpha channel, its value will set to the maximum of corresponding channel range: 255 for CV_8U, 65535 for CV_16U, 1 for CV_32F.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
