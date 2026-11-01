% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_flip}
\alias{cv_flip}
\title{Flips a 2D array around vertical, horizontal, or both axes}
\usage{cv_flip(src, flipCode, dst = NULL)}
\arguments{
\item{src}{input array.}
\item{flipCode}{a flag to specify how to flip the array; 0 means flipping around the x-axis and positive value (for example, 1) means flipping around y-axis. Negative value (for example, -1) means flipping around both axes.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Flips a 2D array around vertical, horizontal, or both axes.}
\details{
The function cv::flip flips the array in one of three different ways (row and column indices are 0-based):

The example scenarios of using the function are the following: Vertical flipping of the image (flipCode == 0) to switch between top-left and bottom-left image origin. This is a typical operation in video processing on Microsoft Windows* OS. Horizontal flipping of the image with the subsequent horizontal shift and absolute difference calculation to check for a vertical-axis symmetry (flipCode > 0). Simultaneous horizontal and vertical flipping of the image with the subsequent shift and absolute difference calculation to check for a central symmetry (flipCode < 0). Reversing the order of point arrays (flipCode > 0 or flipCode == 0).

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_transpose}}、\code{\link{cv_repeat}}、\code{\link{cv_completeSymm}}}
\keyword{opencv}
