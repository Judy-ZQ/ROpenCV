% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTrackerMIL}
\alias{cvTrackerMIL}
\title{The MIL algorithm trains a classifier in an online manner to separate the object from the background}
\usage{cvTrackerMIL(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTrackerMIL} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{The MIL algorithm trains a classifier in an online manner to separate the object from the background.}
\details{
Multiple Instance Learning avoids the drift problem for a robust tracking. The implementation is based on [14] .
Original code can be found here http://vision.ucsd.edu/~bbabenko/project_miltrack.shtml
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
\strong{构造}
\preformatted{
cvTrackerMIL(parameters = list())
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTrackerMIL(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{init(image, boundingBox)}：Initialize the tracker with a known bounding box that surrounded the target.
\item \code{update(image)}：Update the tracker, find the new most likely bounding box for the target.
}
}
\seealso{父类 \code{\link{cvTracker}}（\code{cv::Tracker}）}
\section{Params 的字段}{
该参数在 R 侧是一个命名 list，字段名与 C++ 一致；未给出的字段保持 OpenCV 默认值，写错字段名会直接报错。
\itemize{
\item \code{featureSetNumFeatures}（\code{int}）：features
\item \code{samplerInitInRadius}（\code{float}）：radius for gathering positive instances during init
\item \code{samplerInitMaxNegNum}（\code{int}）：negative samples to use during init
\item \code{samplerSearchWinSize}（\code{float}）：size of search window
\item \code{samplerTrackInRadius}（\code{float}）：radius for gathering positive instances during tracking
\item \code{samplerTrackMaxNegNum}（\code{int}）：negative samples to use during tracking
\item \code{samplerTrackMaxPosNum}（\code{int}）：positive samples to use during tracking
}
}
\keyword{opencv}
