% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTrackerDaSiamRPNParams}
\alias{cvTrackerDaSiamRPNParams}
\title{\code{cv::TrackerDaSiamRPN::Params} 参数对象}
\usage{cvTrackerDaSiamRPNParams(...)}
\arguments{
\item{...}{字段按名字给出，未给出的保持 OpenCV 的默认值；写错字段名会直接报错。}
}
\value{一个 \code{cvTrackerDaSiamRPNParams} 对象，可直接作为其它函数的 \code{params} 参数。}
\description{\code{cv::TrackerDaSiamRPN::Params} 的参数对象，字段按名字给出。}
\details{
\strong{字段}

字段名与 C++ 结构体一致，可用 \code{cv_struct_fields("cv::TrackerDaSiamRPN::Params")} 查全部字段。

\itemize{

\item \code{backend}（\code{int}）

\item \code{kernel_cls1}（\code{std::string}）

\item \code{kernel_r1}（\code{std::string}）

\item \code{model}（\code{std::string}）

\item \code{target}（\code{int}）

}

\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
}
\keyword{opencv}
