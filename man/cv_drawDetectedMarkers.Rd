% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawDetectedMarkers}
\alias{cv_drawDetectedMarkers}
\title{Draw detected markers in image}
\usage{cv_drawDetectedMarkers(image = NULL, corners, ids = NULL,
    borderColor = c(0, 255, 0))}
\arguments{
\item{image}{input/output image. It must have 1 or 3 channels. The number of channels is not altered.}
\item{corners}{positions of marker corners on input image. (e.g std::vector<std::vector<cv::Point2f> > ). For N detected markers, the dimensions of this array should be Nx4. The order of the corners should be clockwise.}
\item{ids}{vector of identifiers for markers in markersCorners . Optional, if not provided, ids are not painted.}
\item{borderColor}{color of marker borders. Rest of colors (text color and first corner color) are calculated based on this one to improve visualization.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draw detected markers in image.}
\details{
Given an array of detected marker corners and its corresponding ids, this functions draws the markers in the image. The marker borders are painted and the markers identifiers if provided. Useful for debugging purposes.

\strong{C++ 头文件：}\code{#include <opencv2/objdetect/aruco_detector.hpp>}
}
\keyword{opencv}
