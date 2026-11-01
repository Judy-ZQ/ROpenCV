% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getTickCount}
\alias{cv_getTickCount}
\title{Returns the number of ticks}
\usage{cv_getTickCount()}
\value{数值标量。}
\description{Returns the number of ticks.}
\details{
The function returns the number of ticks after the certain event (for example, when the machine was turned on). It can be used to initialize RNG or to measure a function execution time by reading the tick count before and after the function call.

\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
}
\seealso{\code{\link{cv_getTickFrequency}}}
\keyword{opencv}
