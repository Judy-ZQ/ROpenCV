% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvMapperPyramid}
\alias{cvMapperPyramid}
\title{cv::reg::MapperPyramid}
\usage{cvMapperPyramid(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvMapperPyramid} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::reg::MapperPyramid} 的 R 包装：构造函数与可调方法见下。}
\details{
Calculates a map using a gaussian pyramid
\strong{C++ 头文件：}\code{#include <opencv2/reg/mapperpyramid.hpp>}
\strong{构造}
\preformatted{
cvMapperPyramid(baseMapper)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvMapperPyramid(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calculate(img1, img2, init = NULL)}：Implements cv::reg::Mapper.
\item \code{getMap()}：Implements cv::reg::Mapper.
}
}
\seealso{父类 \code{\link{cvMapper}}（\code{cv::reg::Mapper}）}
\keyword{opencv}
