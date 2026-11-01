% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTrackerDaSiamRPN}
\alias{cvTrackerDaSiamRPN}
\title{cv::TrackerDaSiamRPN}
\usage{cvTrackerDaSiamRPN(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTrackerDaSiamRPN} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::TrackerDaSiamRPN} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::TrackerDaSiamRPN} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
\strong{构造}
\preformatted{
cvTrackerDaSiamRPN(parameters = list())
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTrackerDaSiamRPN(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getTrackingScore()}：Return tracking score.
\item \code{init(image, boundingBox)}：Initialize the tracker with a known bounding box that surrounded the target.
\item \code{update(image)}：Update the tracker, find the new most likely bounding box for the target.
}
}
\seealso{父类 \code{\link{cvTracker}}（\code{cv::Tracker}）}
\section{Params 的字段}{
该参数在 R 侧是一个命名 list，字段名与 C++ 一致；未给出的字段保持 OpenCV 默认值，写错字段名会直接报错。
\itemize{
\item \code{backend}（\code{int}）
\item \code{kernel_cls1}（\code{std::string}）
\item \code{kernel_r1}（\code{std::string}）
\item \code{model}（\code{std::string}）
\item \code{target}（\code{int}）
}
}
\keyword{opencv}
