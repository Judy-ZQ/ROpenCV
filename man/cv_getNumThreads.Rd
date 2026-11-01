% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getNumThreads}
\alias{cv_getNumThreads}
\title{Returns the number of threads used by OpenCV for parallel regions}
\usage{cv_getNumThreads()}
\value{整数标量。}
\description{Returns the number of threads used by OpenCV for parallel regions.}
\details{
Always returns 1 if OpenCV is built without threading support.

The exact meaning of return value depends on the threading framework used by OpenCV library:

\itemize{
\item \code{TBB} - The number of threads, that OpenCV will try to use for parallel regions. If there is any tbb::thread_scheduler_init in user code conflicting with OpenCV, then function returns default number of threads used by TBB library.
\item \code{OpenMP} - An upper bound on the number of threads that could be used to form a new team.
\item \code{Concurrency} - The number of threads, that OpenCV will try to use for parallel regions.
\item \code{GCD} - Unsupported; returns the GCD thread pool limit (512) for compatibility.
\item \code{C=} - The number of threads, that OpenCV will try to use for parallel regions, if before called setNumThreads with threads > 0, otherwise returns the number of logical CPUs, available for the process.
}

\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
}
\seealso{\code{\link{cv_setNumThreads}}、\code{\link{cv_getThreadNum}}}
\keyword{opencv}
