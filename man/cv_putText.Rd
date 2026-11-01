% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_putText}
\alias{cv_putText}
\title{Draws a text string}
\usage{cv_putText(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws a text string.}
\details{
The function cv::putText renders the specified text string in the image. Symbols that cannot be rendered using the specified font are replaced by question marks. See getTextSize for a text rendering code example.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void putText(InputOutputArray img, const String& text, Point org, int fontFace, double fontScale, Scalar color, int thickness = 1, int lineType = LINE_8, bool bottomLeftOrigin = false)

Point putText(InputOutputArray img, const String& text, Point org, Scalar color, FontFace& fface, int size, int weight = 0, PutTextFlags flags = PUT_TEXT_ALIGN_LEFT, Range wrap = Range())

}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
