% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getCPUTickCount}
\alias{cv_getCPUTickCount}
\title{Returns the number of CPU ticks}
\usage{cv_getCPUTickCount()}
\value{数值标量。}
\description{Returns the number of CPU ticks.}
\details{
The function returns the current number of CPU ticks on some architectures (such as x86, x64, PowerPC). On other platforms the function is equivalent to getTickCount. It can also be used for very accurate time measurements, as well as for RNG initialization. Note that in case of multi-CPU systems a thread, from which getCPUTickCount is called, can be suspended and resumed at another CPU with its own counter. So, theoretically (and practically) the subsequent calls to the function do not necessary return the monotonously increasing values. Also, since a modern CPU varies the CPU frequency depending on the load, the number of CPU clocks spent in some code cannot be directly converted to time units. Therefore, getTickCount is generally a preferable solution for measuring execution time.

\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
}
\keyword{opencv}
