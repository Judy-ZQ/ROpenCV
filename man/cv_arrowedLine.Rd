% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_arrowedLine}
\alias{cv_arrowedLine}
\title{Draws an arrow segment pointing from the first point to the second one}
\usage{cv_arrowedLine(img = NULL, pt1, pt2, color, thickness = 1, line_type = 8,
    shift = 0, tipLength = 0.1)}
\arguments{
\item{img}{Image.}
\item{pt1}{The point the arrow starts from.}
\item{pt2}{The point the arrow points to.}
\item{color}{Line color.}
\item{thickness}{Line thickness.}
\item{line_type}{Type of the line. See LineTypes}
\item{shift}{Number of fractional bits in the point coordinates.}
\item{tipLength}{The length of the arrow tip in relation to the arrow length}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws an arrow segment pointing from the first point to the second one.}
\details{
The function cv::arrowedLine draws an arrow between pt1 and pt2 points in the image. See also line.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
