% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawContours}
\alias{cv_drawContours}
\title{Draws contours outlines or filled contours}
\usage{cv_drawContours(image = NULL, contours, contourIdx, color, thickness = 1,
    lineType = LINE_8, hierarchy = NULL, maxLevel = 2147483647L, offset = NULL)}
\arguments{
\item{image}{Destination image.}
\item{contours}{All the input contours. Each contour is stored as a point vector.}
\item{contourIdx}{Parameter indicating a contour to draw. If it is negative, all the contours are drawn.}
\item{color}{Color of the contours.}
\item{thickness}{Thickness of lines the contours are drawn with. If it is negative (for example, thickness=FILLED ), the contour interiors are drawn.}
\item{lineType}{Line connectivity. See LineTypes}
\item{hierarchy}{Optional information about hierarchy. It is only needed if you want to draw only some of the contours (see maxLevel ).}
\item{maxLevel}{Maximal level for drawn contours. If it is 0, only the specified contour is drawn. If it is 1, the function draws the contour(s) and all the nested contours. If it is 2, the function draws the contours, all the nested contours, all the nested-to-nested contours, and so on. This parameter is only taken into account when there is hierarchy available.}
\item{offset}{Optional contour shift parameter. Shift all the drawn contours by the specified .}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draws contours outlines or filled contours.}
\details{
The function draws contour outlines in the image if or fills the area bounded by the contours if . The example below shows how to retrieve connected components from the binary image and label them: :

\strong{注意：}When thickness=FILLED, the function is designed to handle connected components with holes correctly even when no hierarchy data is provided. This is done by analyzing all the outlines together using even-odd rule. This may give incorrect results if you have a joint collection of separately retrieved contours. In order to solve this problem, you need to call drawContours separately for each sub-group of contours, or iterate over the collection using contourIdx parameter.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
