% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTextRecognitionModel}
\alias{cvTextRecognitionModel}
\title{This class represents high-level API for text recognition networks}
\usage{cvTextRecognitionModel(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTextRecognitionModel} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{This class represents high-level API for text recognition networks.}
\details{
TextRecognitionModel allows to set params for preprocessing input image. TextRecognitionModel creates net from file with trained weights and config, sets preprocessing input, runs forward pass and return recognition result. For TextRecognitionModel, CRNN-CTC is supported.
\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
\strong{构造}
\preformatted{
cvTextRecognitionModel(network)
cvTextRecognitionModel(model, config = '')
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTextRecognitionModel(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{enableWinograd(useWinograd)}
\item \code{getDecodeType()}：Get the decoding method.
\item \code{getVocabulary()}：Get the vocabulary for recognition.
\item \code{predict(frame, outs = NULL)}：Given the \code{input} frame, create input blob, run net and return the output \code{blobs}.
\item \code{recognize(frame, roiRects)}：Given the \code{input} frame, create input blob, run net and return recognition result.
\item \code{setDecodeOptsCTCPrefixBeamSearch(beamSize, vocPruneSize = 0)}：Set the decoding method options for \code{"CTC-prefix-beam-search"} decode usage.
\item \code{setDecodeType(decodeType)}：Set the decoding method of translating the network output into string.
\item \code{setInputCrop(crop)}：Set flag crop for frame.
\item \code{setInputMean(mean)}：Set mean value for frame.
\item \code{setInputParams(scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE)}：Set preprocessing parameters for frame.
\item \code{setInputScale(scale)}：Set scalefactor value for frame.
\item \code{setInputSize(width, height)}
\item \code{setInputSwapRB(swapRB)}：Set flag swapRB for frame.
\item \code{setOutputNames(outNames)}：Set output names for frame.
\item \code{setPreferableBackend(backendId)}
\item \code{setPreferableTarget(targetId)}：Member Data Documentation
\item \code{setVocabulary(vocabulary)}：Set the vocabulary for recognition.
}
}
\seealso{父类 \code{\link{cvModel}}（\code{cv::dnn::Model}）}
\keyword{opencv}
