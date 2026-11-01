% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTickMeter}
\alias{cvTickMeter}
\title{a Class to measure passing time}
\usage{cvTickMeter(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTickMeter} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{a Class to measure passing time.}
\details{
The class computes passing time by counting the number of ticks per second. That is, the following code computes the execution time in seconds:
\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
\strong{构造}
\preformatted{
cvTickMeter()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTickMeter(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getAvgTimeMilli()}：returns average time in milliseconds
\item \code{getAvgTimeSec()}：returns average time in seconds
\item \code{getCounter()}：returns internal counter value.
\item \code{getFPS()}：returns average FPS (frames per second) value.
\item \code{getTimeMicro()}：returns passed time in microseconds.
\item \code{getTimeMilli()}：returns passed time in milliseconds.
\item \code{getTimeSec()}：returns passed time in seconds.
\item \code{getTimeTicks()}：returns counted ticks.
\item \code{reset()}：resets internal values.
\item \code{start()}：starts counting ticks.
\item \code{stop()}：stops counting ticks.
}
}
\keyword{opencv}
