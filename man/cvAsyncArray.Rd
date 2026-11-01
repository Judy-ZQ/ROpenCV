% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvAsyncArray}
\alias{cvAsyncArray}
\title{Returns result of asynchronous operations}
\usage{cvAsyncArray(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvAsyncArray} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Returns result of asynchronous operations.}
\details{
Object has attached asynchronous state. Assignment operator doesn't clone asynchronous state (it is shared between all instances).
Result can be fetched via get method only once.
\strong{C++ 头文件：}\code{#include <opencv2/core/async.hpp>}
\strong{构造}
\preformatted{
cvAsyncArray()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvAsyncArray(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{get(dst = NULL, timeoutNs)}：Retrieving the result with timeout
\item \code{release()}
\item \code{valid()}
\item \code{wait_for(timeoutNs)}：Friends And Related Symbol Documentation
}
}
\keyword{opencv}
