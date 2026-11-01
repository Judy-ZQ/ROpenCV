% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getThreadNum}
\alias{cv_getThreadNum}
\title{Returns the index of the currently executed thread within the current parallel region}
\usage{cv_getThreadNum()}
\value{整数标量。}
\description{Returns the index of the currently executed thread within the current parallel region. Always returns 0 if called outside of parallel region.}
\details{
The exact meaning of the return value depends on the threading framework used by OpenCV library:

\itemize{
\item \code{TBB} - Unsupported with current 4.1 TBB release. Maybe will be supported in future.
\item \code{OpenMP} - The thread number, within the current team, of the calling thread.
\item \code{Concurrency} - An ID for the virtual processor that the current context is executing on (0 for master thread and unique number for others, but not necessary 1,2,3,...).
\item \code{GCD} - System calling thread's ID. Never returns 0 inside parallel region.
\item \code{C=} - The index of the current parallel task.
}

\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
}
\seealso{\code{\link{cv_setNumThreads}}、\code{\link{cv_getNumThreads}}}
\keyword{opencv}
