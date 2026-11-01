% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_addSamplesDataSearchSubDirectory}
\alias{cv_addSamplesDataSearchSubDirectory}
\title{Append samples search data sub directory}
\usage{cv_addSamplesDataSearchSubDirectory(subdir)}
\arguments{
\item{subdir}{samples data sub directory}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Append samples search data sub directory.}
\details{
General usage is to add OpenCV modules name (\code{<opencv_contrib>/modules/<name>/samples/data} -> \code{<name>/samples/data} + \code{modules/<name>/samples/data}). Passed subdirectories are used in LIFO order.

\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
}
\keyword{opencv}
