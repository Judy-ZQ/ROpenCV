% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_contrastStretching}
\alias{cv_contrastStretching}
\title{Given an input bgr or grayscale image, apply linear contrast stretching on domain [0, 255] and return the resulting image}
\usage{cv_contrastStretching(input, output = NULL, r1, s1, r2, s2)}
\arguments{
\item{input}{input bgr or grayscale image.}
\item{output}{resulting image of contrast stretching.}
\item{r1}{x coordinate of first point (r1, s1) in the transformation function.}
\item{s1}{y coordinate of first point (r1, s1) in the transformation function.}
\item{r2}{x coordinate of second point (r2, s2) in the transformation function.}
\item{s2}{y coordinate of second point (r2, s2) in the transformation function.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Given an input bgr or grayscale image, apply linear contrast stretching on domain [0, 255] and return the resulting image.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/intensity_transform.hpp>}
}
\keyword{opencv}
