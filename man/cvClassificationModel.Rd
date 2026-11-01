% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvClassificationModel}
\alias{cvClassificationModel}
\title{This class represents high-level API for classification models}
\usage{cvClassificationModel(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvClassificationModel} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{This class represents high-level API for classification models.}
\details{
ClassificationModel allows to set params for preprocessing input image. ClassificationModel creates net from file with trained weights and config, sets preprocessing input, runs forward pass and return top-1 prediction.
\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
\strong{构造}
\preformatted{
cvClassificationModel(network)
cvClassificationModel(model, config = '')
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvClassificationModel(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{classify(frame)}：Given the \code{input} frame, create input blob, run net and return top-1 prediction.
\item \code{enableWinograd(useWinograd)}
\item \code{getEnableSoftmaxPostProcessing()}：Get enable/disable softmax post processing option.
\item \code{predict(frame, outs = NULL)}：Given the \code{input} frame, create input blob, run net and return the output \code{blobs}.
\item \code{setEnableSoftmaxPostProcessing(enable)}：Set enable/disable softmax post processing option.
\item \code{setInputCrop(crop)}：Set flag crop for frame.
\item \code{setInputMean(mean)}：Set mean value for frame.
\item \code{setInputParams(scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE)}：Set preprocessing parameters for frame.
\item \code{setInputScale(scale)}：Set scalefactor value for frame.
\item \code{setInputSize(width, height)}
\item \code{setInputSwapRB(swapRB)}：Set flag swapRB for frame.
\item \code{setOutputNames(outNames)}：Set output names for frame.
\item \code{setPreferableBackend(backendId)}
\item \code{setPreferableTarget(targetId)}：Member Data Documentation
}
}
\seealso{父类 \code{\link{cvModel}}（\code{cv::dnn::Model}）}
\keyword{opencv}
