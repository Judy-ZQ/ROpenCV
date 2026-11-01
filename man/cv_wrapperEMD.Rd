% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_wrapperEMD}
\alias{cv_wrapperEMD}
\title{cv_wrapperEMD}
\usage{cv_wrapperEMD(signature1, signature2, distType, cost = NULL,
    lowerBound = NULL, dst = NULL)}
\arguments{
\item{signature1}{含义见下方 C++ 签名。}
\item{signature2}{含义见下方 C++ 签名。}
\item{distType}{含义见下方 C++ 签名。}
\item{cost}{含义见下方 C++ 签名。}
\item{lowerBound}{含义见下方 C++ 签名。}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{float}）挂在 \code{attr(x, "value")} 上。}
\description{R 侧入口 \code{cv_wrapperEMD}，对应 C++ 的 \code{cv::wrapperEMD}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
