% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_dumpInputOutputArray}
\alias{cv_dumpInputOutputArray}
\title{cv_dumpInputOutputArray}
\usage{cv_dumpInputOutputArray(argument = NULL)}
\arguments{
\item{argument}{含义见下方 C++ 签名。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{String}）挂在 \code{attr(x, "value")} 上。}
\description{R 侧入口 \code{cv_dumpInputOutputArray}，对应 C++ 的 \code{cv::utils::dumpInputOutputArray}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core/bindings_utils.hpp>}
}
\keyword{opencv}
