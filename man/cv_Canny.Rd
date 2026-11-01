% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_Canny}
\alias{cv_Canny}
\title{Finds edges in an image using the Canny algorithm [48] }
\usage{cv_Canny(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Finds edges in an image using the Canny algorithm [48] .}
\details{
The function finds edges in the input image and marks them in the output map edges using the Canny algorithm. The smallest value between threshold1 and threshold2 is used for edge linking. The largest value is used to find initial segments of strong edges. See http://en.wikipedia.org/wiki/Canny_edge_detector

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void Canny(InputArray image, OutputArray edges, double threshold1, double threshold2, int apertureSize = 3, bool L2gradient = false)

void Canny(InputArray dx, InputArray dy, OutputArray edges, double threshold1, double threshold2, bool L2gradient = false)

}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
