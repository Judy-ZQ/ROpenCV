% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQuantizedPyramid}
\alias{cvQuantizedPyramid}
\title{Represents a modality operating over an image pyramid}
\usage{cvQuantizedPyramid(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvQuantizedPyramid} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Represents a modality operating over an image pyramid.}
\details{
C++ 类 \code{cv::linemod::QuantizedPyramid} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/rgbd/linemod.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvQuantizedPyramid(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{extractTemplate()}：Extract most discriminant features at current pyramid level to form a new template.
\item \code{pyrDown()}：Go to the next pyramid level.
\item \code{quantize()}：Compute quantized image at current pyramid level for online detection.
}
}
\keyword{opencv}
