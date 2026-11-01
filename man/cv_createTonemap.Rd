% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createTonemap}
\alias{cv_createTonemap}
\title{Creates simple linear mapper with gamma correction}
\usage{cv_createTonemap(gamma = 1)}
\arguments{
\item{gamma}{positive value for gamma correction. Gamma value of 1.0 implies no correction, gamma equal to 2.2f is suitable for most displays. Generally gamma > 1 brightens the image and gamma < 1 darkens it.}
}
\value{\code{Ptr<Tonemap>} 对应的 R 对象。}
\description{Creates simple linear mapper with gamma correction.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
