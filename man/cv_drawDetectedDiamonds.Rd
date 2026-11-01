% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawDetectedDiamonds}
\alias{cv_drawDetectedDiamonds}
\title{Draw a set of detected ChArUco Diamond markers}
\usage{cv_drawDetectedDiamonds(image = NULL, diamondCorners, diamondIds = NULL,
    borderColor = c(0, 0, 255))}
\arguments{
\item{image}{input/output image. It must have 1 or 3 channels. The number of channels is not altered.}
\item{diamondCorners}{positions of diamond corners in the same format returned by detectCharucoDiamond . (e.g std::vector<std::vector<cv::Point2f> > ). For N detected markers, the dimensions of this array should be Nx4. The order of the corners should be clockwise.}
\item{diamondIds}{vector of identifiers for diamonds in diamondCorners, in the same format returned by detectCharucoDiamond (e.g. std::vector<Vec4i>). Optional, if not provided, ids are not painted.}
\item{borderColor}{color of marker borders. Rest of colors (text color and first corner color) are calculated based on this one.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draw a set of detected ChArUco Diamond markers.}
\details{
Given an array of detected diamonds, this functions draws them in the image. The marker borders are painted and the markers identifiers if provided. Useful for debugging purposes.

\strong{C++ 头文件：}\code{#include <opencv2/objdetect/charuco_detector.hpp>}
}
\keyword{opencv}
