% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_logTransform}
\alias{cv_logTransform}
\title{Given an input bgr or grayscale image and constant c, apply log transformation to the image on domain [0, 255] and return the resulting ima}
\usage{cv_logTransform(input, output = NULL)}
\arguments{
\item{input}{input bgr or grayscale image.}
\item{output}{resulting image of log transformations.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Given an input bgr or grayscale image and constant c, apply log transformation to the image on domain [0, 255] and return the resulting image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/intensity_transform.hpp>}
}
\keyword{opencv}
