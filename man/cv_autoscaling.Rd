% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_autoscaling}
\alias{cv_autoscaling}
\title{Given an input bgr or grayscale image, apply autoscaling on domain [0, 255] to increase the contrast of the input image and return the resu}
\usage{cv_autoscaling(input, output = NULL)}
\arguments{
\item{input}{input bgr or grayscale image.}
\item{output}{resulting image of autoscaling.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Given an input bgr or grayscale image, apply autoscaling on domain [0, 255] to increase the contrast of the input image and return the resulting image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/intensity_transform.hpp>}
}
\keyword{opencv}
