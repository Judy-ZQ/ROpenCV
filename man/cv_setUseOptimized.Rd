% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_setUseOptimized}
\alias{cv_setUseOptimized}
\title{Enables or disables the optimized code}
\usage{cv_setUseOptimized(onoff)}
\arguments{
\item{onoff}{The boolean flag specifying whether the optimized code should be used (onoff=true) or not (onoff=false).}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Enables or disables the optimized code.}
\details{
The function can be used to dynamically turn on and off optimized dispatched code (code that uses SSE4.2, AVX/AVX2, and other instructions on the platforms that support it). It sets a global flag that is further checked by OpenCV functions. Since the flag is not checked in the inner OpenCV loops, it is only safe to call the function on the very top level in your application where you can be sure that no other OpenCV function is currently executed.

By default, the optimized code is enabled unless you disable it in CMake. The current status can be retrieved using useOptimized.

\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
}
\keyword{opencv}
