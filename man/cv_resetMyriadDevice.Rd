% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_resetMyriadDevice}
\alias{cv_resetMyriadDevice}
\title{Release a Myriad device (binded by OpenCV)}
\usage{cv_resetMyriadDevice()}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Release a Myriad device (binded by OpenCV).}
\details{
Single Myriad device cannot be shared across multiple processes which uses Inference Engine's Myriad plugin.
}
\keyword{opencv}
