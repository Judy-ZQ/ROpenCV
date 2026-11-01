% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createSyntheticSequenceGenerator}
\alias{cv_createSyntheticSequenceGenerator}
\title{Creates an instance of SyntheticSequenceGenerator}
\usage{cv_createSyntheticSequenceGenerator(background, object, amplitude = 2,
    wavelength = 20, wavespeed = 0.2, objspeed = 6)}
\arguments{
\item{background}{Background image for object.}
\item{object}{Object image which will move slowly over the background.}
\item{amplitude}{Amplitude of wave distortion applied to background.}
\item{wavelength}{Length of waves in distortion applied to background.}
\item{wavespeed}{How fast waves will move.}
\item{objspeed}{How fast object will fly over background.}
}
\value{\code{Ptr<SyntheticSequenceGenerator>} 对应的 R 对象。}
\description{Creates an instance of SyntheticSequenceGenerator.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/bgsegm.hpp>}
}
\keyword{opencv}
