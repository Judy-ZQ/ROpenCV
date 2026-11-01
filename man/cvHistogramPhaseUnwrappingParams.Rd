% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvHistogramPhaseUnwrappingParams}
\alias{cvHistogramPhaseUnwrappingParams}
\title{Parameters of phaseUnwrapping constructor}
\usage{cvHistogramPhaseUnwrappingParams(...)}
\arguments{
\item{...}{字段按名字给出，未给出的保持 OpenCV 的默认值；写错字段名会直接报错。}
}
\value{一个 \code{cvHistogramPhaseUnwrappingParams} 对象，可直接作为其它函数的 \code{params} 参数。}
\description{Parameters of phaseUnwrapping constructor.}
\details{
\strong{字段}

字段名与 C++ 结构体一致，可用 \code{cv_struct_fields("cv::phase_unwrapping::HistogramPhaseUnwrapping::Params")} 查全部字段。

\itemize{

\item \code{height}（\code{int}）

\item \code{histThresh}（\code{float}）

\item \code{nbrOfLargeBins}（\code{int}）

\item \code{nbrOfSmallBins}（\code{int}）

\item \code{width}（\code{int}）

}

Parameters of phaseUnwrapping constructor.

\strong{C++ 头文件：}\code{#include <opencv2/phase_unwrapping/histogramphaseunwrapping.hpp>}
}
\keyword{opencv}
