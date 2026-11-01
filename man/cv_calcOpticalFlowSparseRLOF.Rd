% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcOpticalFlowSparseRLOF}
\alias{cv_calcOpticalFlowSparseRLOF}
\title{Calculates fast optical flow for a sparse feature set using the robust local optical flow (RLOF) similar to optflow::calcOpticalFlowPyrLK }
\usage{cv_calcOpticalFlowSparseRLOF(prevImg, nextImg, prevPts, nextPts = NULL,
    rlofParam = NULL, forwardBackwardThreshold = 0, status = NULL, err = NULL)}
\arguments{
\item{prevImg}{first 8-bit input image. If The cross-based RLOF is used (by selecting optflow::RLOFOpticalFlowParameter::supportRegionType = SupportRegionType::SR_CROSS) image has to be a 8-bit 3 channel image.}
\item{nextImg}{second 8-bit input image. If The cross-based RLOF is used (by selecting optflow::RLOFOpticalFlowParameter::supportRegionType = SupportRegionType::SR_CROSS) image has to be a 8-bit 3 channel image.}
\item{prevPts}{vector of 2D points for which the flow needs to be found; point coordinates must be single-precision floating-point numbers.}
\item{nextPts}{output vector of 2D points (with single-precision floating-point coordinates) containing the calculated new positions of input features in the second image; when optflow::RLOFOpticalFlowParameter::useInitialFlow variable is true the vector must have the same size as in the input and contain the initialization point correspondences.}
\item{rlofParam}{see optflow::RLOFOpticalFlowParameter}
\item{forwardBackwardThreshold}{Threshold for the forward backward confidence check. If forewardBackwardThreshold <=0 the forward}
\item{status}{output status vector (of unsigned chars); each element of the vector is set to 1 if the flow for the corresponding features has passed the forward backward check.}
\item{err}{output vector of errors; each element of the vector is set to the forward backward error for the corresponding feature.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates fast optical flow for a sparse feature set using the robust local optical flow (RLOF) similar to optflow::calcOpticalFlowPyrLK .}
\details{
The RLOF is a fast local optical flow approach described in [239] [240] [241] and [242] similar to the pyramidal iterative Lucas-Kanade method as proposed by [36]. More details and experiments can be found in the following thesis [243]. The implementation is derived from optflow::calcOpticalFlowPyrLK .

Parameters have been described in [239], [240], [241] and [242]. For the RLOF configuration see optflow::RLOFOpticalFlowParameter for further details.

\strong{注意：}SIMD parallelization is only available when compiling with SSE4.1.

\strong{C++ 头文件：}\code{#include <opencv2/optflow/rlofflow.hpp>}
}
\keyword{opencv}
