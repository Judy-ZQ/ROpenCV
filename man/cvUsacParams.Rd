% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvUsacParams}
\alias{cvUsacParams}
\title{\code{cv::UsacParams} 参数对象}
\usage{cvUsacParams(...)}
\arguments{
\item{...}{字段按名字给出，未给出的保持 OpenCV 的默认值；写错字段名会直接报错。}
}
\value{一个 \code{cvUsacParams} 对象，可直接作为其它函数的 \code{params} 参数。}
\description{\code{cv::UsacParams} 的参数对象，字段按名字给出。}
\details{
\strong{字段}

字段名与 C++ 结构体一致，可用 \code{cv_struct_fields("cv::UsacParams")} 查全部字段。

\itemize{

\item \code{confidence}（\code{double}）

\item \code{final_polisher}（\code{PolishingMethod}）

\item \code{final_polisher_iterations}（\code{int}）

\item \code{isParallel}（\code{bool}）

\item \code{loIterations}（\code{int}）

\item \code{loMethod}（\code{LocalOptimMethod}）

\item \code{loSampleSize}（\code{int}）

\item \code{maxIterations}（\code{int}）

\item \code{neighborsSearch}（\code{NeighborSearchMethod}）

\item \code{randomGeneratorState}（\code{int}）

\item \code{sampler}（\code{SamplingMethod}）

\item \code{score}（\code{ScoreMethod}）

\item \code{threshold}（\code{double}）

}

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
