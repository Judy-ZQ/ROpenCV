% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvPhaseUnwrapping}
\alias{cvPhaseUnwrapping}
\title{Abstract base class for phase unwrapping}
\usage{cvPhaseUnwrapping(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvPhaseUnwrapping} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Abstract base class for phase unwrapping.}
\details{
C++ 类 \code{cv::phase_unwrapping::PhaseUnwrapping} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/phase_unwrapping/phase_unwrapping.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvPhaseUnwrapping(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{unwrapPhaseMap(wrappedPhaseMap, shadowMask = NULL, dst = NULL)}：Unwraps a 2D phase map.
}
}
\keyword{opencv}
