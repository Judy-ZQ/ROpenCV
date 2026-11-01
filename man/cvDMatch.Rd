% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvDMatch}
\alias{cvDMatch}
\title{Class for matching keypoint descriptors}
\usage{cvDMatch(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvDMatch} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class for matching keypoint descriptors.}
\details{
query descriptor index, train descriptor index, train image index, and distance between descriptors.
\strong{C++ 头文件：}\code{#include <opencv2/core/types.hpp>}
\strong{构造}
\preformatted{
cvDMatch()
cvDMatch(queryIdx, trainIdx, distance)
cvDMatch(queryIdx, trainIdx, imgIdx, distance)
}
}
\keyword{opencv}
