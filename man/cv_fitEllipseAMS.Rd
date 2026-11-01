% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fitEllipseAMS}
\alias{cv_fitEllipseAMS}
\title{Fits an ellipse around a set of 2D points}
\usage{cv_fitEllipseAMS(points)}
\arguments{
\item{points}{Input 2D point set, stored in std::vector<> or Mat}
}
\value{长度为 5 的数值向量 \code{c(cx, cy, width, height, angle)}。}
\description{Fits an ellipse around a set of 2D points.}
\details{
The function calculates the ellipse that fits a set of 2D points. It returns the rotated rectangle in which the ellipse is inscribed. The Approximate Mean Square (AMS) proposed by [266] is used.

For an ellipse, this basis set is , which is a set of six free coefficients . However, to specify an ellipse, all that is needed is five numbers; the major and minor axes lengths , the position , and the orientation . This is because the basis set includes lines, quadratics, parabolic and hyperbolic functions as well as elliptical functions as possible fits. If the fit is found to be a parabolic or hyperbolic function then the standard fitEllipse method is used. The AMS method restricts the fit to parabolic, hyperbolic and elliptical curves by imposing the condition that where the matrices and are the partial derivatives of the design matrix with respect to x and y. The matrices are formed row by row applying the following to each of the points in the set:

The AMS method minimizes the cost function

The minimum cost is found by solving the generalized eigenvalue problem.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
