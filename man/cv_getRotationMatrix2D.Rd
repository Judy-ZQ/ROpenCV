% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getRotationMatrix2D}
\alias{cv_getRotationMatrix2D}
\title{Calculates an affine matrix of 2D rotation}
\usage{cv_getRotationMatrix2D(center, angle, scale)}
\arguments{
\item{center}{Center of the rotation in the source image.}
\item{angle}{Rotation angle in degrees. Positive values mean counter-clockwise rotation (the coordinate origin is assumed to be the top-left corner).}
\item{scale}{Isotropic scale factor.}
}
\value{\code{cvMat} 图像。}
\description{Calculates an affine matrix of 2D rotation.}
\details{
The function calculates the following matrix:

where

The transformation maps the rotation center to itself. If this is not the target, adjust the shift.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_getAffineTransform}}、\code{\link{cv_warpAffine}}、\code{\link{cv_transform}}}
\keyword{opencv}
