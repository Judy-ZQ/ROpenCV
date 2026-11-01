% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_randMVNormal}
\alias{cv_randMVNormal}
\title{Generates sample from multivariate normal distribution}
\usage{cv_randMVNormal(mean, cov, nsamples, dst = NULL)}
\arguments{
\item{mean}{an average row vector}
\item{cov}{symmetric covariation matrix}
\item{nsamples}{returned samples count}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Generates sample from multivariate normal distribution.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ml.hpp>}
}
\keyword{opencv}
