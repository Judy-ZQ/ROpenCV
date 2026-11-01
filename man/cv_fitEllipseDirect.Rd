% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fitEllipseDirect}
\alias{cv_fitEllipseDirect}
\title{Fits an ellipse around a set of 2D points}
\usage{cv_fitEllipseDirect(points)}
\arguments{
\item{points}{Input 2D point set, stored in std::vector<> or Mat}
}
\value{长度为 5 的数值向量 \code{c(cx, cy, width, height, angle)}。}
\description{Fits an ellipse around a set of 2D points.}
\details{
The function calculates the ellipse that fits a set of 2D points. It returns the rotated rectangle in which the ellipse is inscribed. The Direct least square (Direct) method by [94] is used.

For an ellipse, this basis set is , which is a set of six free coefficients . However, to specify an ellipse, all that is needed is five numbers; the major and minor axes lengths , the position , and the orientation . This is because the basis set includes lines, quadratics, parabolic and hyperbolic functions as well as elliptical functions as possible fits. The Direct method confines the fit to ellipses by ensuring that . The condition imposed is that which satisfies the inequality and as the coefficients can be arbitrarily scaled is not overly restrictive.

The minimum cost is found by solving the generalized eigenvalue problem.

The system produces only one positive eigenvalue which is chosen as the solution with its eigenvector . These are used to find the coefficients

The scaling factor guarantees that .

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
