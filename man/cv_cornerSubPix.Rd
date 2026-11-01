% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_cornerSubPix}
\alias{cv_cornerSubPix}
\title{Refines the corner locations}
\usage{cv_cornerSubPix(image, corners = NULL, winSize, zeroZone, criteria)}
\arguments{
\item{image}{Input single-channel, 8-bit or float image.}
\item{corners}{Initial coordinates of the input corners and refined coordinates provided for output.}
\item{winSize}{Half of the side length of the search window. For example, if winSize=Size(5,5) , then a search window is used.}
\item{zeroZone}{Half of the size of the dead region in the middle of the search zone over which the summation in the formula below is not done. It is used sometimes to avoid possible singularities of the autocorrelation matrix. The value of (-1,-1) indicates that there is no such a size.}
\item{criteria}{Criteria for termination of the iterative process of corner refinement. That is, the process of corner position refinement stops either after criteria.maxCount iterations or when the corner position moves by less than criteria.epsilon on some iteration.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Refines the corner locations.}
\details{
The function iterates to find the sub-pixel accurate location of corners or radial saddle points as described in [96], and as shown on the figure below.

Sub-pixel accurate corner locator is based on the observation that every vector from the center to a point located within a neighborhood of is orthogonal to the image gradient at subject to image and measurement noise. Consider the expression:

where is an image gradient at one of the points in a neighborhood of . The value of is to be found so that is minimized. A system of equations may be set up with set to zero:

where the gradients are summed within a neighborhood ("search window") of . Calling the first gradient term and the second gradient term gives:

The algorithm sets the center of the neighborhood window at this new center and then iterates until the center stays within a set threshold.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
