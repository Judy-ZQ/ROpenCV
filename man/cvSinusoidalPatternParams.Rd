% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSinusoidalPatternParams}
\alias{cvSinusoidalPatternParams}
\title{Parameters of SinusoidalPattern constructor}
\usage{cvSinusoidalPatternParams(...)}
\arguments{
\item{...}{字段按名字给出，未给出的保持 OpenCV 的默认值；写错字段名会直接报错。}
}
\value{一个 \code{cvSinusoidalPatternParams} 对象，可直接作为其它函数的 \code{params} 参数。}
\description{Parameters of SinusoidalPattern constructor.}
\details{
\strong{字段}

字段名与 C++ 结构体一致，可用 \code{cv_struct_fields("cv::structured_light::SinusoidalPattern::Params")} 查全部字段。

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

Parameters of SinusoidalPattern constructor.

\strong{C++ 头文件：}\code{#include <opencv2/structured_light/sinusoidalpattern.hpp>}
}
\keyword{opencv}
