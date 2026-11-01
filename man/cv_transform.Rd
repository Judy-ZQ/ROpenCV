% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_transform}
\alias{cv_transform}
\title{Performs the matrix transformation of every array element}
\usage{cv_transform(src, m, dst = NULL)}
\arguments{
\item{src}{input array that must have as many channels (1 to 4) as m.cols or m.cols-1.}
\item{m}{transformation 2x2 or 2x3 floating-point matrix.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs the matrix transformation of every array element.}
\details{
The function cv::transform performs the matrix transformation of every element of the array src and stores the results in dst :

(when m.cols=src.channels ), or

(when m.cols=src.channels +1 )

Every element of the N -channel array src is interpreted as N -element vector that is transformed using the M x N or M x (N+1) matrix m to M-element vector - the corresponding element of the output array dst .

The function may be used for geometrical transformation of N -dimensional points, arbitrary linear color space transformation (such as various kinds of RGB to YUV transforms), shuffling the image channels, and so forth.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_perspectiveTransform}}、\code{\link{cv_getAffineTransform}}、\code{\link{cv_estimateAffine2D}}、\code{\link{cv_warpAffine}}、\code{\link{cv_warpPerspective}}}
\keyword{opencv}
