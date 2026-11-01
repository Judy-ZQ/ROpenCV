% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_validateDisparity}
\alias{cv_validateDisparity}
\title{validates disparity using the left-right check}
\usage{cv_validateDisparity(disparity = NULL, cost, minDisparity,
    numberOfDisparities, disp12MaxDisp = 1)}
\arguments{
\item{disparity}{含义见下方 C++ 签名。}
\item{cost}{含义见下方 C++ 签名。}
\item{minDisparity}{含义见下方 C++ 签名。}
\item{numberOfDisparities}{含义见下方 C++ 签名。}
\item{disp12MaxDisp}{含义见下方 C++ 签名。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{validates disparity using the left-right check. The matrix "cost" should be computed by the stereo correspondence algorithm}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/stereo.hpp>}
}
\keyword{opencv}
