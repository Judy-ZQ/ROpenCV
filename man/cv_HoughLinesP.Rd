% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_HoughLinesP}
\alias{cv_HoughLinesP}
\title{Finds line segments in a binary image using the probabilistic Hough transform}
\usage{cv_HoughLinesP(image, rho, theta, threshold, minLineLength = 0,
    maxLineGap = 0, dst = NULL)}
\arguments{
\item{image}{8-bit, single-channel binary source image. The image may be modified by the function.}
\item{rho}{Distance resolution of the accumulator in pixels.}
\item{theta}{Angle resolution of the accumulator in radians.}
\item{threshold}{Accumulator threshold parameter. Only those lines are returned that get enough votes .}
\item{minLineLength}{Minimum line length. Line segments shorter than that are rejected.}
\item{maxLineGap}{Maximum allowed gap between points on the same line to link them.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Finds line segments in a binary image using the probabilistic Hough transform.}
\details{
The function implements the probabilistic Hough transform algorithm for line detection, described in [186]

See the line detection example below:

This is a sample picture the function parameters have been tuned for:

And this is the output of the above program in case of the probabilistic Hough transform:

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
