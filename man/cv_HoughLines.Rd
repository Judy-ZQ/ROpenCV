% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_HoughLines}
\alias{cv_HoughLines}
\title{Finds lines in a binary image using the standard Hough transform}
\usage{cv_HoughLines(image, rho, theta, threshold, srn = 0, stn = 0, min_theta = 0,
    max_theta = pi, dst = NULL)}
\arguments{
\item{image}{8-bit, single-channel binary source image. The image may be modified by the function.}
\item{rho}{Distance resolution of the accumulator in pixels.}
\item{theta}{Angle resolution of the accumulator in radians.}
\item{threshold}{Accumulator threshold parameter. Only those lines are returned that get enough votes .}
\item{srn}{For the multi-scale Hough transform, it is a divisor for the distance resolution rho. The coarse accumulator distance resolution is rho and the accurate accumulator resolution is rho/srn. If both srn=0 and stn=0, the classical Hough transform is used. Otherwise, both these parameters should be positive.}
\item{stn}{For the multi-scale Hough transform, it is a divisor for the distance resolution theta.}
\item{min_theta}{For standard and multi-scale Hough transform, minimum angle to check for lines. Must fall between 0 and max_theta.}
\item{max_theta}{For standard and multi-scale Hough transform, an upper bound for the angle. Must fall between min_theta and CV_PI. The actual maximum angle in the accumulator may be slightly less than max_theta, depending on the parameters min_theta and theta.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Finds lines in a binary image using the standard Hough transform.}
\details{
The function implements the standard or standard multi-scale Hough transform algorithm for line detection. See http://homepages.inf.ed.ac.uk/rbf/HIPR2/hough.htm for a good explanation of Hough transform.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
