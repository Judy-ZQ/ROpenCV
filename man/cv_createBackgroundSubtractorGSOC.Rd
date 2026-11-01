% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createBackgroundSubtractorGSOC}
\alias{cv_createBackgroundSubtractorGSOC}
\title{Creates an instance of BackgroundSubtractorGSOC algorithm}
\usage{cv_createBackgroundSubtractorGSOC(mc = LSBP_CAMERA_MOTION_COMPENSATION_NONE,
    nSamples = 20, replaceRate = 0.003, propagationRate = 0.01,
    hitsThreshold = 32, alpha = 0.01, beta = 0.0022,
    blinkingSupressionDecay = 0.1, blinkingSupressionMultiplier = 0.1,
    noiseRemovalThresholdFacBG = 4e-04, noiseRemovalThresholdFacFG = 8e-04)}
\arguments{
\item{mc}{Whether to use camera motion compensation.}
\item{nSamples}{Number of samples to maintain at each point of the frame.}
\item{replaceRate}{Probability of replacing the old sample - how fast the model will update itself.}
\item{propagationRate}{Probability of propagating to neighbors.}
\item{hitsThreshold}{How many positives the sample must get before it will be considered as a possible replacement.}
\item{alpha}{Scale coefficient for threshold.}
\item{beta}{Bias coefficient for threshold.}
\item{blinkingSupressionDecay}{Blinking supression decay factor.}
\item{blinkingSupressionMultiplier}{Blinking supression multiplier.}
\item{noiseRemovalThresholdFacBG}{Strength of the noise removal for background points.}
\item{noiseRemovalThresholdFacFG}{Strength of the noise removal for foreground points.}
}
\value{\code{Ptr<BackgroundSubtractorGSOC>} 对应的 R 对象。}
\description{Creates an instance of BackgroundSubtractorGSOC algorithm.}
\details{
Implementation of the different yet better algorithm which is called GSOC, as it was implemented during GSOC and was not originated from any paper.

\strong{C++ 头文件：}\code{#include <opencv2/bgsegm.hpp>}
}
\keyword{opencv}
