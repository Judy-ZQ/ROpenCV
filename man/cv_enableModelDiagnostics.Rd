% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_enableModelDiagnostics}
\alias{cv_enableModelDiagnostics}
\title{Enables detailed logging of the DNN model loading with CV DNN API}
\usage{cv_enableModelDiagnostics(isDiagnosticsMode)}
\arguments{
\item{isDiagnosticsMode}{Indicates whether diagnostic mode should be set.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Enables detailed logging of the DNN model loading with CV DNN API.}
\details{
Diagnostic mode provides detailed logging of the model loading stage to explore potential problems (ex.: not implemented layer type).

\strong{注意：}In diagnostic mode series of assertions will be skipped, it can lead to the expected application crash.

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
