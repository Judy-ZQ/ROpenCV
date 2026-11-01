% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_setNumThreads}
\alias{cv_setNumThreads}
\title{OpenCV will try to set the number of threads for subsequent parallel regions}
\usage{cv_setNumThreads(nthreads)}
\arguments{
\item{nthreads}{Number of threads used by OpenCV.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{OpenCV will try to set the number of threads for subsequent parallel regions.}
\details{
If threads == 1, OpenCV will disable threading optimizations and run all it's functions sequentially. Passing threads < 0 will reset threads number to system default. The function is not thread-safe. It must not be called in parallel region or concurrent threads.

OpenCV will try to run its functions with specified threads number, but some behaviour differs from framework:

\itemize{
\item \code{TBB} - User-defined parallel constructions will run with the same threads number, if another is not specified. If later on user creates his own scheduler, OpenCV will use it.
\item \code{OpenMP} - No special defined behaviour.
\item \code{Concurrency} - If threads == 1, OpenCV will disable threading optimizations and run its functions sequentially.
\item \code{GCD} - Supports only values <= 0.
\item \code{C=} - No special defined behaviour.
}

\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
}
\seealso{\code{\link{cv_getNumThreads}}、\code{\link{cv_getThreadNum}}}
\keyword{opencv}
