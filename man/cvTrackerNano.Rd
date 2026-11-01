% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTrackerNano}
\alias{cvTrackerNano}
\title{the Nano tracker is a super lightweight dnn-based general object tracking}
\usage{cvTrackerNano(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTrackerNano} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{the Nano tracker is a super lightweight dnn-based general object tracking.}
\details{
Nano tracker is much faster and extremely lightweight due to special model structure, the whole model size is about 1.9 MB. Nano tracker needs two models: one for feature extraction (backbone) and the another for localization (neckhead). Model download link: https://github.com/HonglinChu/SiamTrackers/tree/master/NanoTrack/models/nanotrackv2 Original repo is here: https://github.com/HonglinChu/NanoTrack Author: HongLinChu, 16284 .nosp@m. 6434 .nosp@m. 5@qq. .nosp@m. com
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
\strong{构造}
\preformatted{
cvTrackerNano(parameters = list())
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTrackerNano(...)
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
\item \code{backbone}（\code{std::string}）
\item \code{backend}（\code{int}）
\item \code{neckhead}（\code{std::string}）
\item \code{target}（\code{int}）
}
}
\keyword{opencv}
