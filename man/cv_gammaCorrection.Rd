% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_gammaCorrection}
\alias{cv_gammaCorrection}
\title{Given an input bgr or grayscale image and constant gamma, apply power-law transformation, a.k.a}
\usage{cv_gammaCorrection(input, output = NULL, gamma)}
\arguments{
\item{input}{input bgr or grayscale image.}
\item{output}{resulting image of gamma corrections.}
\item{gamma}{constant in c*r^gamma where r is pixel value.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Given an input bgr or grayscale image and constant gamma, apply power-law transformation, a.k.a. gamma correction to the image on domain [0, 255] and return the resulting image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/intensity_transform.hpp>}
}
\keyword{opencv}
