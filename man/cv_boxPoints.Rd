% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_boxPoints}
\alias{cv_boxPoints}
\title{Finds the four vertices of a rotated rect}
\usage{cv_boxPoints(box, dst = NULL)}
\arguments{
\item{box}{The input rotated rectangle. It may be the output of minAreaRect.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Finds the four vertices of a rotated rect. Useful to draw the rotated rectangle.}
\details{
The function finds the four vertices of a rotated rectangle. This function is useful to draw the rectangle. In C++, instead of using this function, you can directly use RotatedRect::points method. Please visit the tutorial on Creating Bounding rotated boxes and ellipses for contours for more information.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
