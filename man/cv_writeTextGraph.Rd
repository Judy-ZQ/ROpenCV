% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_writeTextGraph}
\alias{cv_writeTextGraph}
\title{Create a text representation for a binary network stored in protocol buffer format}
\usage{cv_writeTextGraph(model, output)}
\arguments{
\item{model}{A path to binary network.}
\item{output}{A path to output text file to be created.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Create a text representation for a binary network stored in protocol buffer format.}
\details{
\strong{注意：}To reduce output file size, trained weights are not included.

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
