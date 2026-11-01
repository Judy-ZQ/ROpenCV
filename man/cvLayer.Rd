% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvLayer}
\alias{cvLayer}
\title{This interface class allows to build new Layers - are building blocks of networks}
\usage{cvLayer(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvLayer} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{This interface class allows to build new Layers - are building blocks of networks.}
\details{
Each class, derived from Layer, must implement forward method to compute outputs. Also before using the new layer into networks you must register your layer by using one of LayerFactory macros.
\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvLayer(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{finalize(inputs, outputs = NULL)}：Computes and sets internal parameters according to inputs, outputs and blobs.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{outputNameToIndex(outputName)}：Returns index of output blob in output array.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{run(inputs, internals = NULL)}：Allocates layer and computes output.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
