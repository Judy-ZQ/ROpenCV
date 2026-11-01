% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_moments}
\alias{cv_moments}
\title{Calculates all of the moments up to the third order of a polygon or rasterized shape}
\usage{cv_moments(array, binaryImage = FALSE)}
\arguments{
\item{array}{Single chanel raster image (CV_8U, CV_16U, CV_16S, CV_32F, CV_64F) or an array ( or ) of 2D points (Point or Point2f).}
\item{binaryImage}{If it is true, all non-zero image pixels are treated as 1's. The parameter is used for images only.}
}
\value{moments.}
\description{Calculates all of the moments up to the third order of a polygon or rasterized shape.}
\details{
The function computes moments, up to the 3rd order, of a vector shape or a rasterized shape. The results are returned in the structure cv::Moments.

\strong{注意：}Only applicable to contour moments calculations from Python bindings: Note that the numpy type for the input array should be either np.int32 or np.float32.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_contourArea}}、\code{\link{cv_arcLength}}}
\keyword{opencv}
