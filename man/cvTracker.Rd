% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTracker}
\alias{cvTracker}
\title{Base abstract class for the long-term tracker}
\usage{cvTracker(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTracker} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Base abstract class for the long-term tracker.}
\details{
C++ 类 \code{cv::Tracker} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTracker(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{init(image, boundingBox)}：Initialize the tracker with a known bounding box that surrounded the target.
\item \code{update(image)}：Update the tracker, find the new most likely bounding box for the target.
}
}
\keyword{opencv}
