% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_PCAProject}
\alias{cv_PCAProject}
\title{wrap PCA::project}
\usage{cv_PCAProject(data, mean, eigenvectors, dst = NULL)}
\arguments{
\item{data}{含义见下方 C++ 签名。}
\item{mean}{含义见下方 C++ 签名。}
\item{eigenvectors}{含义见下方 C++ 签名。}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{wrap PCA::project}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
