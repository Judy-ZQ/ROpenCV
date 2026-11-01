% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvModality}
\alias{cvModality}
\title{Interface for modalities that plug into the LINE template matching representation}
\usage{cvModality(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvModality} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Interface for modalities that plug into the LINE template matching representation.}
\details{
C++ 类 \code{cv::linemod::Modality} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/rgbd/linemod.hpp>}
\strong{构造}
\preformatted{
cvModality(modality_type)
cvModality(fn)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvModality(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{name()}：Implemented in cv::linemod::ColorGradient, and cv::linemod::DepthNormal.
\item \code{process(src, mask = NULL)}：Form a quantized image pyramid from a source image.
\item \code{read(fn)}：Implemented in cv::linemod::ColorGradient, and cv::linemod::DepthNormal.
}
}
\keyword{opencv}
