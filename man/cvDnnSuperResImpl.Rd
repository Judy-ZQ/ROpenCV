% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvDnnSuperResImpl}
\alias{cvDnnSuperResImpl}
\title{A class to upscale images via convolutional neural networks}
\usage{cvDnnSuperResImpl(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvDnnSuperResImpl} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{A class to upscale images via convolutional neural networks. The following four models are implemented}
\details{
\itemize{
\item edsr
\item espcn
\item fsrcnn
\item lapsrn
}
\strong{C++ 头文件：}\code{#include <opencv2/dnn_superres.hpp>}
\strong{构造}
\preformatted{
cvDnnSuperResImpl()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvDnnSuperResImpl(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getAlgorithm()}：Returns the scale factor of the model
\item \code{getScale()}：Returns the scale factor of the model
\item \code{readModel(path)}：Read the model from the given path.
\item \code{setModel(algo, scale)}：Set desired model.
\item \code{setPreferableBackend(backendId)}：Set computation backend.
\item \code{setPreferableTarget(targetId)}：Set computation target.
\item \code{upsample(img, dst = NULL)}：Upsample via neural network.
\item \code{upsampleMultioutput(img, imgs_new = NULL, scale_factors, node_names)}：Upsample via neural network of multiple outputs.
}
}
\keyword{opencv}
