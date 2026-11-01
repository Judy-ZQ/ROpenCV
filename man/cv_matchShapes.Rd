% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_matchShapes}
\alias{cv_matchShapes}
\title{Compares two shapes}
\usage{cv_matchShapes(contour1, contour2, method, parameter)}
\arguments{
\item{contour1}{First contour or grayscale image.}
\item{contour2}{Second contour or grayscale image.}
\item{method}{Comparison method, see ShapeMatchModes}
\item{parameter}{Method-specific parameter (not supported now).}
}
\value{数值标量。}
\description{Compares two shapes.}
\details{
The function compares two shapes. All three implemented methods use the Hu invariants (see HuMoments)

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
