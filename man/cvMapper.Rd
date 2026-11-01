% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvMapper}
\alias{cvMapper}
\title{Base class for modelling an algorithm for calculating a map}
\usage{cvMapper(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvMapper} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Base class for modelling an algorithm for calculating a map.}
\details{
The class is only used to define the common interface for any possible mapping algorithm.
\strong{C++ 头文件：}\code{#include <opencv2/reg/mapper.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvMapper(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calculate(img1, img2, init = NULL)}：Implemented in cv::reg::MapperGradAffine, cv::reg::MapperGradEuclid, cv::reg::MapperGradProj, cv::reg::MapperGradShift, cv::reg::MapperGradSimilar, and cv::reg::MapperPyramid.
\item \code{getMap()}：Implemented in cv::reg::MapperGradAffine, cv::reg::MapperGradEuclid, cv::reg::MapperGradProj, cv::reg::MapperGradShift, cv::reg::MapperGradSimilar, and cv::reg::MapperPyramid.
}
}
\keyword{opencv}
