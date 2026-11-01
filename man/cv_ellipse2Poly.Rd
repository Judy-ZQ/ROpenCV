% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_ellipse2Poly}
\alias{cv_ellipse2Poly}
\title{Approximates an elliptic arc with a polyline}
\usage{cv_ellipse2Poly(center, axes, angle, arcStart, arcEnd, delta)}
\arguments{
\item{center}{Center of the arc.}
\item{axes}{Half of the size of the ellipse main axes. See ellipse for details.}
\item{angle}{Rotation angle of the ellipse in degrees. See ellipse for details.}
\item{arcStart}{Starting angle of the elliptic arc in degrees.}
\item{arcEnd}{Ending angle of the elliptic arc in degrees.}
\item{delta}{Angle between the subsequent polyline vertices. It defines the approximation accuracy.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Approximates an elliptic arc with a polyline.}
\details{
The function ellipse2Poly computes the vertices of a polyline that approximates the specified elliptic arc. It is used by ellipse. If \code{arcStart} is greater than \code{arcEnd}, they are swapped.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
