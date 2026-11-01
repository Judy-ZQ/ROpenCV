% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvLegacyTracker}
\alias{cvLegacyTracker}
\title{cv::legacy::tracking::Tracker}
\usage{cvLegacyTracker(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvLegacyTracker} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::legacy::tracking::Tracker} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::legacy::tracking::Tracker} 的 R 绑定。
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvLegacyTracker(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{init(image, boundingBox)}
\item \code{update(image)}
}
}
\keyword{opencv}
