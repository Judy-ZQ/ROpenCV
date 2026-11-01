% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findContoursLinkRuns}
\alias{cv_findContoursLinkRuns}
\title{Find contours using link runs algorithm}
\usage{cv_findContoursLinkRuns(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Find contours using link runs algorithm.}
\details{
This function implements an algorithm different from cv::findContours:

\itemize{
\item doesn't allocate temporary image internally, thus it has reduced memory consumption
\item supports CV_8UC1 images only
\item outputs 2-level hierarhy only (RETR_CCOMP mode)
\item doesn't support approximation change other than CHAIN_APPROX_SIMPLE In all other aspects this function is compatible with cv::findContours.
}

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void findContoursLinkRuns(InputArray image, OutputArrayOfArrays contours, OutputArray hierarchy)

void findContoursLinkRuns(InputArray image, OutputArrayOfArrays contours)

}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
