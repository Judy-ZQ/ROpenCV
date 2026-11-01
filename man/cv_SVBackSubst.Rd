% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_SVBackSubst}
\alias{cv_SVBackSubst}
\title{wrap SVD::backSubst}
\usage{cv_SVBackSubst(w, u, vt, rhs, dst = NULL)}
\arguments{
\item{w}{含义见下方 C++ 签名。}
\item{u}{含义见下方 C++ 签名。}
\item{vt}{含义见下方 C++ 签名。}
\item{rhs}{含义见下方 C++ 签名。}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{wrap SVD::backSubst}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
