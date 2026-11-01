% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getTextSize}
\alias{cv_getTextSize}
\title{Calculates the width and height of a text string}
\usage{cv_getTextSize(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{The size of a box that contains the specified text.}
\description{Calculates the width and height of a text string.}
\details{
The function cv::getTextSize calculates and returns the size of a box that contains the specified text. That is, the following code renders some text, the tight box surrounding it, and the baseline: :

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Size getTextSize(const String& text, int fontFace, double fontScale, int thickness, int* baseLine)

Rect getTextSize(Size imgsize, const String& text, Point org, FontFace& fface, int size, int weight = 0, PutTextFlags flags = PUT_TEXT_ALIGN_LEFT, Range wrap = Range())

}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_putText}}}
\keyword{opencv}
