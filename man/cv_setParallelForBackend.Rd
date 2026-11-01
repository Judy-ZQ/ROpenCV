% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_setParallelForBackend}
\alias{cv_setParallelForBackend}
\title{Change OpenCV parallel_for backend}
\usage{cv_setParallelForBackend(backendName, propagateNumThreads = TRUE)}
\arguments{
\item{backendName}{含义见下方 C++ 签名。}
\item{propagateNumThreads}{含义见下方 C++ 签名。}
}
\value{逻辑标量。}
\description{Change OpenCV parallel_for backend.}
\details{
\strong{注意：}This call is not thread-safe. Consider calling this function from the \code{main } before any other OpenCV processing functions (and without any other created threads).

\strong{C++ 头文件：}\code{#include <opencv2/core/parallel/parallel_backend.hpp>}
}
\keyword{opencv}
