% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_perspectiveTransform}
\alias{cv_perspectiveTransform}
\title{Performs the perspective matrix transformation of vectors}
\usage{cv_perspectiveTransform(src, m, dst = NULL)}
\arguments{
\item{src}{input two-channel or three-channel floating-point array; each element is a 2D/3D vector to be transformed.}
\item{m}{3x3 or 4x4 floating-point transformation matrix.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs the perspective matrix transformation of vectors.}
\details{
The function cv::perspectiveTransform transforms every element of src by treating it as a 2D or 3D vector, in the following way:

where

and

Here a 3D vector transformation is shown. In case of a 2D vector transformation, the z component is omitted.

\strong{注意：}The function transforms a sparse set of 2D or 3D vectors. If you want to transform an image using perspective transformation, use warpPerspective . If you have an inverse problem, that is, you want to compute the most probable perspective transformation out of several pairs of corresponding points, you can use getPerspectiveTransform or findHomography .

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_transform}}、\code{\link{cv_warpPerspective}}、\code{\link{cv_getPerspectiveTransform}}、\code{\link{cv_findHomography}}}
\keyword{opencv}
