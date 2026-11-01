% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_ellipse}
\alias{cv_ellipse}
\title{Draws a simple or thick elliptic arc or fills an ellipse sector}
\usage{cv_ellipse(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws a simple or thick elliptic arc or fills an ellipse sector.}
\details{
The function cv::ellipse with more parameters draws an ellipse outline, a filled ellipse, an elliptic arc, or a filled ellipse sector. The drawing code uses general parametric form. A piecewise-linear curve is used to approximate the elliptic arc boundary. If you need more control of the ellipse rendering, you can retrieve the curve using ellipse2Poly and then render it with polylines or fill it with fillPoly. If you use the first variant of the function and want to draw the whole ellipse, not an arc, pass \code{startAngle=0} and \code{endAngle=360}. If \code{startAngle} is greater than \code{endAngle}, they are swapped. The figure below explains the meaning of the parameters to draw the blue arc.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void ellipse(InputOutputArray img, Point center, Size axes, double angle, double startAngle, double endAngle, const Scalar& color, int thickness = 1, int lineType = LINE_8, int shift = 0)

void ellipse(InputOutputArray img, const RotatedRect& box, const Scalar& color, int thickness = 1, int lineType = LINE_8)

}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
