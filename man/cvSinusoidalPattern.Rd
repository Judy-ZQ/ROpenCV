% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSinusoidalPattern}
\alias{cvSinusoidalPattern}
\title{Class implementing Fourier transform profilometry (FTP) , phase-shifting profilometry (PSP) and Fourier-assisted phase-shifting profilometr}
\usage{cvSinusoidalPattern(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSinusoidalPattern} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing Fourier transform profilometry (FTP) , phase-shifting profilometry (PSP) and Fourier-assisted phase-shifting profilometry (FAPS) based on [62].}
\details{
This class generates sinusoidal patterns that can be used with FTP, PSP and FAPS.
\strong{C++ 头文件：}\code{#include <opencv2/structured_light/sinusoidalpattern.hpp>}
\strong{构造}
\preformatted{
cvSinusoidalPattern(parameters = NULL)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSinusoidalPattern(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{computeDataModulationTerm(patternImages, shadowMask, dst = NULL)}：compute the data modulation term.
\item \code{computePhaseMap(patternImages, fundamental = NULL, wrappedPhaseMap = NULL, shadowMask = NULL)}：Compute a wrapped phase map from sinusoidal patterns.
\item \code{decode(patternImages, blackImages = NULL, whiteImages = NULL, flags = DECODE_3D_UNDERWORLD, dst = NULL)}：Decodes the structured light pattern, generating a disparity map.
\item \code{findProCamMatches(projUnwrappedPhaseMap, camUnwrappedPhaseMap, matches = NULL)}：Find correspondences between the two devices thanks to unwrapped phase maps.
\item \code{generate(patternImages = NULL)}：Generates the structured light pattern to project.
\item \code{unwrapPhaseMap(wrappedPhaseMap, camSize, shadowMask = NULL, dst = NULL)}：Unwrap the wrapped phase map to remove phase ambiguities.
}
}
\seealso{父类 \code{\link{cvStructuredLightPattern}}（\code{cv::structured_light::StructuredLightPattern}）}
\section{Params 的字段}{
Parameters of SinusoidalPattern constructor.
该参数在 R 侧是一个命名 list，字段名与 C++ 一致；未给出的字段保持 OpenCV 默认值，写错字段名会直接报错。
\itemize{
\item \code{height}（\code{int}）
\item \code{horizontal}（\code{bool}）
\item \code{markersLocation}（\code{std::vector<Point2f>}）
\item \code{methodId}（\code{int}）
\item \code{nbrOfPeriods}（\code{int}）
\item \code{nbrOfPixelsBetweenMarkers}（\code{int}）
\item \code{setMarkers}（\code{bool}）
\item \code{shiftValue}（\code{float}）
\item \code{width}（\code{int}）
}
}
\keyword{opencv}
