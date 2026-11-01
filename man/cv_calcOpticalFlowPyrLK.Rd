% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcOpticalFlowPyrLK}
\alias{cv_calcOpticalFlowPyrLK}
\title{Calculates an optical flow for a sparse feature set using the iterative Lucas-Kanade method with pyramids}
\usage{cv_calcOpticalFlowPyrLK(prevImg, nextImg, prevPts, nextPts = NULL,
    winSize = c(21, 21), maxLevel = 3, criteria = c(5, 30, 0.01), flags = 0,
    minEigThreshold = 1e-04, status = NULL, err = NULL)}
\arguments{
\item{prevImg}{first 8-bit input image or pyramid constructed by buildOpticalFlowPyramid.}
\item{nextImg}{second input image or pyramid of the same size and the same type as prevImg.}
\item{prevPts}{vector of 2D points for which the flow needs to be found; point coordinates must be single-precision floating-point numbers.}
\item{nextPts}{output vector of 2D points (with single-precision floating-point coordinates) containing the calculated new positions of input features in the second image; when OPTFLOW_USE_INITIAL_FLOW flag is passed, the vector must have the same size as in the input.}
\item{winSize}{size of the search window at each pyramid level.}
\item{maxLevel}{0-based maximal pyramid level number; if set to 0, pyramids are not used (single level), if set to 1, two levels are used, and so on; if pyramids are passed to input then algorithm will use as many levels as pyramids have but no more than maxLevel.}
\item{criteria}{parameter, specifying the termination criteria of the iterative search algorithm (after the specified maximum number of iterations criteria.maxCount or when the search window moves by less than criteria.epsilon.}
\item{flags}{operation flags: OPTFLOW_USE_INITIAL_FLOW uses initial estimations, stored in nextPts; if the flag is not set, then prevPts is copied to nextPts and is considered the initial estimate. OPTFLOW_LK_GET_MIN_EIGENVALS use minimum eigen values as an error measure (see minEigThreshold description); if the flag is not set, then L1 distance between patches around the original and a moved point, divided by number of pixels in a window, is used as a error measure.}
\item{minEigThreshold}{the algorithm calculates the minimum eigen value of a 2x2 normal matrix of optical flow equations (this matrix is called a spatial gradient matrix in [36]), divided by number of pixels in a window; if this value is less than minEigThreshold, then a corresponding feature is filtered out and its flow is not processed, so it allows to remove bad points and get a performance boost.}
\item{status}{output status vector (of unsigned chars); each element of the vector is set to 1 if the flow for the corresponding features has been found, otherwise, it is set to 0.}
\item{err}{output vector of errors; each element of the vector is set to an error for the corresponding feature, type of the error measure can be set in flags parameter; if the flow wasn't found then the error is not defined (use the status parameter to find such cases).}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates an optical flow for a sparse feature set using the iterative Lucas-Kanade method with pyramids.}
\details{
The function implements a sparse iterative version of the Lucas-Kanade optical flow in pyramids. See [36] . The function is parallelized with the TBB library.

\itemize{
\item An example using the Lucas-Kanade optical flow algorithm can be found at opencv_source_code/samples/cpp/lkdemo.cpp
\item (Python) An example using the Lucas-Kanade optical flow algorithm can be found at opencv_source_code/samples/python/lk_track.py
\item (Python) An example using the Lucas-Kanade tracker for homography matching can be found at opencv_source_code/samples/python/lk_homography.py
}

\strong{注意：}Some examples:

\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
}
\keyword{opencv}
