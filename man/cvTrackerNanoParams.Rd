% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTrackerNanoParams}
\alias{cvTrackerNanoParams}
\title{\code{cv::TrackerNano::Params} 参数对象}
\usage{cvTrackerNanoParams(...)}
\arguments{
\item{...}{字段按名字给出，未给出的保持 OpenCV 的默认值；写错字段名会直接报错。}
}
\value{一个 \code{cvTrackerNanoParams} 对象，可直接作为其它函数的 \code{params} 参数。}
\description{\code{cv::TrackerNano::Params} 的参数对象，字段按名字给出。}
\details{
\strong{字段}

字段名与 C++ 结构体一致，可用 \code{cv_struct_fields("cv::TrackerNano::Params")} 查全部字段。

\itemize{

\item \code{backbone}（\code{std::string}）

\item \code{backend}（\code{int}）

\item \code{neckhead}（\code{std::string}）

\item \code{target}（\code{int}）

}

\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
}
\keyword{opencv}
