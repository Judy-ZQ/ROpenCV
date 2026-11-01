% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvMapperGradAffine}
\alias{cvMapperGradAffine}
\title{cv::reg::MapperGradAffine}
\usage{cvMapperGradAffine(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvMapperGradAffine} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::reg::MapperGradAffine} 的 R 包装：构造函数与可调方法见下。}
\details{
Mapper for affine motion
\strong{C++ 头文件：}\code{#include <opencv2/reg/mappergradaffine.hpp>}
\strong{构造}
\preformatted{
cvMapperGradAffine()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvMapperGradAffine(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calculate(img1, img2, init = NULL)}：Implements cv::reg::Mapper.
\item \code{getMap()}：Implements cv::reg::Mapper.
}
}
\seealso{父类 \code{\link{cvMapper}}（\code{cv::reg::Mapper}）}
\keyword{opencv}
