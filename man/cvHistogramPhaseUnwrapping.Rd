% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvHistogramPhaseUnwrapping}
\alias{cvHistogramPhaseUnwrapping}
\title{Class implementing two-dimensional phase unwrapping based on [157] This algorithm belongs to the quality-guided phase unwrapping methods}
\usage{cvHistogramPhaseUnwrapping(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvHistogramPhaseUnwrapping} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing two-dimensional phase unwrapping based on [157] This algorithm belongs to the quality-guided phase unwrapping methods. First, it computes a reliability map from second differences between a pixel and its eight neighbours. Reliability values lie between 0 and 16*pi*pi. Then, this reliability map is used to compute the reliabilities of "edges". An edge is an entity defined by two pixels that are connected horizontally or vertically. Its reliability is found by adding the the reliabilities of the two pixels connected through it. Edges are sorted in a histogram based on their reliability values. This histogram is then used to unwrap pixels, starting from the highest quality pixel.}
\details{
The wrapped phase map and the unwrapped result are stored in CV_32FC1 Mat.
\strong{C++ 头文件：}\code{#include <opencv2/phase_unwrapping/histogramphaseunwrapping.hpp>}
\strong{构造}
\preformatted{
cvHistogramPhaseUnwrapping(parameters = list())
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvHistogramPhaseUnwrapping(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getInverseReliabilityMap(dst = NULL)}：Get the reliability map computed from the wrapped phase map.
\item \code{unwrapPhaseMap(wrappedPhaseMap, shadowMask = NULL, dst = NULL)}：Unwraps a 2D phase map.
}
}
\seealso{父类 \code{\link{cvPhaseUnwrapping}}（\code{cv::phase_unwrapping::PhaseUnwrapping}）}
\section{Params 的字段}{
Parameters of phaseUnwrapping constructor.
该参数在 R 侧是一个命名 list，字段名与 C++ 一致；未给出的字段保持 OpenCV 默认值，写错字段名会直接报错。
\itemize{
\item \code{height}（\code{int}）
\item \code{histThresh}（\code{float}）
\item \code{nbrOfLargeBins}（\code{int}）
\item \code{nbrOfSmallBins}（\code{int}）
\item \code{width}（\code{int}）
}
}
\keyword{opencv}
