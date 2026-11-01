% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_convertMaps}
\alias{cv_convertMaps}
\title{Converts image transformation maps from one representation to another}
\usage{cv_convertMaps(map1, map2, dstmap1type, nninterpolation = FALSE,
    dstmap1 = NULL, dstmap2 = NULL)}
\arguments{
\item{map1}{The first input map of type CV_16SC2, CV_32FC1, or CV_32FC2 .}
\item{map2}{The second input map of type CV_16UC1, CV_32FC1, or none (empty matrix), respectively.}
\item{dstmap1type}{Type of the first output map that should be CV_16SC2, CV_32FC1, or CV_32FC2 .}
\item{nninterpolation}{Flag indicating whether the fixed-point maps are used for the nearest-neighbor or for a more complex interpolation.}
\item{dstmap1}{The first output map that has the type dstmap1type and the same size as src .}
\item{dstmap2}{The second output map.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Converts image transformation maps from one representation to another.}
\details{
The function converts a pair of maps for remap from one representation to another. The following options ( (map1.type , map2.type ) (dstmap1.type , dstmap2.type ) ) are supported:

\itemize{
\item . This is the most frequently used conversion operation, in which the original floating-point maps (see remap) are converted to a more compact and much faster fixed-point representation. The first output array contains the rounded coordinates and the second array (created only when nninterpolation=false ) contains indices in the interpolation tables.
\item . The same as above but the original maps are stored in one 2-channel matrix.
\item Reverse conversion. Obviously, the reconstructed floating-point maps will not be exactly the same as the originals.
}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_remap}}、\code{\link{cv_undistort}}、\code{\link{cv_initUndistortRectifyMap}}}
\keyword{opencv}
