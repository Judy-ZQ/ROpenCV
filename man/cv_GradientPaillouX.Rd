% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_GradientPaillouX}
\alias{cv_GradientPaillouX}
\title{cv_GradientPaillouX}
\usage{cv_GradientPaillouX(op, alpha, omega, dst = NULL)}
\arguments{
\item{op}{含义见下方 C++ 签名。}
\item{alpha}{含义见下方 C++ 签名。}
\item{omega}{含义见下方 C++ 签名。}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{R 侧入口 \code{cv_GradientPaillouX}，对应 C++ 的 \code{cv::ximgproc::GradientPaillouX}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/paillou_filter.hpp>}
}
\keyword{opencv}
