% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBOWTrainer}
\alias{cvBOWTrainer}
\title{Abstract base class for training the bag of visual words vocabulary from a set of descriptors}
\usage{cvBOWTrainer(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBOWTrainer} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Abstract base class for training the bag of visual words vocabulary from a set of descriptors.}
\details{
For details, see, for example, Visual Categorization with Bags of Keypoints by Gabriella Csurka, Christopher R. Dance, Lixin Fan, Jutta Willamowski, Cedric Bray, 2004. :
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBOWTrainer(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{add(descriptors)}：Adds descriptors to a training set.
\item \code{clear()}
\item \code{cluster(descriptors)}：Clusters train descriptors.
\item \code{descriptorsCount()}：Returns the count of all descriptors stored in the training set.
\item \code{getDescriptors()}：Returns a training set of descriptors.
}
}
\keyword{opencv}
