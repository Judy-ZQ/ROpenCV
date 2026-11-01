% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvMapperGradSimilar}
\alias{cvMapperGradSimilar}
\title{cv::reg::MapperGradSimilar}
\usage{cvMapperGradSimilar(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvMapperGradSimilar} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::reg::MapperGradSimilar} 的 R 包装：构造函数与可调方法见下。}
\details{
Calculates a similarity transformation between to images (scale, rotation, and shift)
\strong{C++ 头文件：}\code{#include <opencv2/reg/mappergradsimilar.hpp>}
\strong{构造}
\preformatted{
cvMapperGradSimilar()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvMapperGradSimilar(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calculate(img1, img2, init = NULL)}：Implements cv::reg::Mapper.
\item \code{getMap()}：Implements cv::reg::Mapper.
}
}
\seealso{父类 \code{\link{cvMapper}}（\code{cv::reg::Mapper}）}
\keyword{opencv}
