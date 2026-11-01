% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createCalibrateDebevec}
\alias{cv_createCalibrateDebevec}
\title{Creates CalibrateDebevec object}
\usage{cv_createCalibrateDebevec(samples = 70, lambda = 10, random = FALSE)}
\arguments{
\item{samples}{number of pixel locations to use}
\item{lambda}{smoothness term weight. Greater values produce smoother results, but can alter the response.}
\item{random}{if true sample pixel locations are chosen at random, otherwise they form a rectangular grid.}
}
\value{\code{Ptr<CalibrateDebevec>} 对应的 R 对象。}
\description{Creates CalibrateDebevec object.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
