% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_rectangle}
\alias{cv_rectangle}
\title{Draws a simple, thick, or filled up-right rectangle}
\usage{cv_rectangle(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws a simple, thick, or filled up-right rectangle.}
\details{
The function cv::rectangle draws a rectangle outline or a filled rectangle whose two opposite corners are pt1 and pt2.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void rectangle(InputOutputArray img, Point pt1, Point pt2, const Scalar& color, int thickness = 1, int lineType = LINE_8, int shift = 0)

void rectangle(InputOutputArray img, Rect rec, const Scalar& color, int thickness = 1, int lineType = LINE_8, int shift = 0)

}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
