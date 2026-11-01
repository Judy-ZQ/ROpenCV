% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTrackerKCF}
\alias{cvTrackerKCF}
\title{cv::tracking::TrackerKCF}
\usage{cvTrackerKCF(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTrackerKCF} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::tracking::TrackerKCF} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::tracking::TrackerKCF} 的 R 绑定。
\strong{构造}
\preformatted{
cvTrackerKCF(parameters = list())
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTrackerKCF(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{init(image, boundingBox)}：Initialize the tracker with a known bounding box that surrounded the target.
\item \code{update(image)}：Update the tracker, find the new most likely bounding box for the target.
}
}
\seealso{父类 \code{\link{cvTracker}}（\code{cv::Tracker}）}
\keyword{opencv}
