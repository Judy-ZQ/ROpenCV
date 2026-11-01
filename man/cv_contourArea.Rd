% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_contourArea}
\alias{cv_contourArea}
\title{Calculates a contour area}
\usage{cv_contourArea(contour, oriented = FALSE)}
\arguments{
\item{contour}{Input vector of 2D points (contour vertices), stored in std::vector or Mat.}
\item{oriented}{Oriented area flag. If it is true, the function returns a signed area value, depending on the contour orientation (clockwise or counter-clockwise). Using this feature you can determine orientation of a contour by taking the sign of an area. By default, the parameter is false, which means that the absolute value is returned.}
}
\value{数值标量。}
\description{Calculates a contour area.}
\details{
The function computes a contour area. Similarly to moments , the area is computed using the Green formula. Thus, the returned area and the number of non-zero pixels, if you draw the contour using drawContours or fillPoly , can be different. Also, the function will most certainly give a wrong results for contours with self-intersections.

Example:

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
