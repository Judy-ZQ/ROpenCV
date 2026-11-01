% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBOWKMeansTrainer}
\alias{cvBOWKMeansTrainer}
\title{kmeans -based class to train visual vocabulary using the bag of visual words approach}
\usage{cvBOWKMeansTrainer(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBOWKMeansTrainer} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{kmeans -based class to train visual vocabulary using the bag of visual words approach.}
\details{
C++ 类 \code{cv::BOWKMeansTrainer} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
\strong{构造}
\preformatted{
cvBOWKMeansTrainer(clusterCount, termcrit, attempts = 3, flags = KMEANS_PP_CENTERS)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBOWKMeansTrainer(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{add(descriptors)}：Adds descriptors to a training set.
\item \code{clear()}
\item \code{cluster(descriptors)}：Clusters train descriptors.
\item \code{descriptorsCount()}：Returns the count of all descriptors stored in the training set.
\item \code{getDescriptors()}：Returns a training set of descriptors.
}
}
\seealso{父类 \code{\link{cvBOWTrainer}}（\code{cv::BOWTrainer}）}
\keyword{opencv}
