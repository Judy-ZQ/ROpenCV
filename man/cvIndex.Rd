% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvIndex}
\alias{cvIndex}
\title{cv::flann::Index}
\usage{cvIndex(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvIndex} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::flann::Index} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::flann::Index} 的 R 绑定。
\strong{构造}
\preformatted{
cvIndex()
cvIndex(features, params = list(), distType = FLANN_DIST_L2)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvIndex(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{build(features, params = list(), distType = FLANN_DIST_L2)}
\item \code{getAlgorithm()}
\item \code{getDistance()}
\item \code{knnSearch(query, knn, params = list(), indices = NULL, dists = NULL)}
\item \code{load(features, filename)}
\item \code{radiusSearch(query, radius, maxResults, params = list(), indices = NULL, dists = NULL)}
\item \code{release()}
\item \code{save(filename)}
}
}
\keyword{opencv}
