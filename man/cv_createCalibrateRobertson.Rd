% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createCalibrateRobertson}
\alias{cv_createCalibrateRobertson}
\title{Creates CalibrateRobertson object}
\usage{cv_createCalibrateRobertson(max_iter = 30, threshold = 0.01)}
\arguments{
\item{max_iter}{maximal number of Gauss-Seidel solver iterations.}
\item{threshold}{target difference between results of two successive steps of the minimization.}
}
\value{\code{Ptr<CalibrateRobertson>} 对应的 R 对象。}
\description{Creates CalibrateRobertson object.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
