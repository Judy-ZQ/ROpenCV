% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createBackgroundSubtractorLSBP}
\alias{cv_createBackgroundSubtractorLSBP}
\title{Creates an instance of BackgroundSubtractorLSBP algorithm}
\usage{cv_createBackgroundSubtractorLSBP(mc = LSBP_CAMERA_MOTION_COMPENSATION_NONE,
    nSamples = 20, LSBPRadius = 16, Tlower = 2, Tupper = 32, Tinc = 1,
    Tdec = 0.05, Rscale = 10, Rincdec = 0.005,
    noiseRemovalThresholdFacBG = 4e-04, noiseRemovalThresholdFacFG = 8e-04,
    LSBPthreshold = 8, minCount = 2)}
\arguments{
\item{mc}{Whether to use camera motion compensation.}
\item{nSamples}{Number of samples to maintain at each point of the frame.}
\item{LSBPRadius}{LSBP descriptor radius.}
\item{Tlower}{Lower bound for T-values. See [116] for details.}
\item{Tupper}{Upper bound for T-values. See [116] for details.}
\item{Tinc}{Increase step for T-values. See [116] for details.}
\item{Tdec}{Decrease step for T-values. See [116] for details.}
\item{Rscale}{Scale coefficient for threshold values.}
\item{Rincdec}{Increase/Decrease step for threshold values.}
\item{noiseRemovalThresholdFacBG}{Strength of the noise removal for background points.}
\item{noiseRemovalThresholdFacFG}{Strength of the noise removal for foreground points.}
\item{LSBPthreshold}{Threshold for LSBP binary string.}
\item{minCount}{Minimal number of matches for sample to be considered as foreground.}
}
\value{\code{Ptr<BackgroundSubtractorLSBP>} 对应的 R 对象。}
\description{Creates an instance of BackgroundSubtractorLSBP algorithm.}
\details{
Background Subtraction using Local SVD Binary Pattern. More details about the algorithm can be found at [116]

\strong{C++ 头文件：}\code{#include <opencv2/bgsegm.hpp>}
}
\keyword{opencv}
