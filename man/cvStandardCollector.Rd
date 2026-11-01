% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvStandardCollector}
\alias{cvStandardCollector}
\title{Default predict collector}
\usage{cvStandardCollector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvStandardCollector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Default predict collector.}
\details{
Trace minimal distance with treshhold checking (that is default behavior for most predict logic)
\strong{C++ 头文件：}\code{#include <opencv2/face/predict_collector.hpp>}
\strong{构造}
\preformatted{
cvStandardCollector(threshold = Inf)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvStandardCollector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getMinDist()}：Returns minimal distance value.
\item \code{getMinLabel()}：Returns label with minimal distance.
\item \code{getResults(sorted = FALSE)}：Return results as vector.
}
}
\keyword{opencv}
