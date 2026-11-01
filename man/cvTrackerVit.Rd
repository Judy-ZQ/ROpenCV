% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTrackerVit}
\alias{cvTrackerVit}
\title{the VIT tracker is a super lightweight dnn-based general object tracking}
\usage{cvTrackerVit(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTrackerVit} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{the VIT tracker is a super lightweight dnn-based general object tracking.}
\details{
VIT tracker is much faster and extremely lightweight due to special model structure, the model file is about 767KB. Model download link: https://github.com/opencv/opencv_zoo/tree/main/models/object_tracking_vittrack Author: PengyuLiu, 18729 .nosp@m. 1850 .nosp@m. 7@qq. .nosp@m. com
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
\strong{构造}
\preformatted{
cvTrackerVit(parameters = list())
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTrackerVit(...)
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
\item \code{meanvalue}（\code{Scalar}）
\item \code{net}（\code{std::string}）
\item \code{stdvalue}（\code{Scalar}）
\item \code{target}（\code{int}）
\item \code{tracking_score_threshold}（\code{float}）
}
}
\keyword{opencv}
