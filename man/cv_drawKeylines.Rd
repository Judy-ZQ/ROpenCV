% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawKeylines}
\alias{cv_drawKeylines}
\title{Draws keylines}
\usage{cv_drawKeylines(image, keylines, color = -1, flags = DEFAULT)}
\arguments{
\item{image}{input image}
\item{keylines}{keylines to be drawn}
\item{color}{color of lines to be drawn (if set to defaul value, color is chosen randomly)}
\item{flags}{drawing flags}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Draws keylines.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/line_descriptor/descriptor.hpp>}
}
\keyword{opencv}
