% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTextDetectionModel_EAST}
\alias{cvTextDetectionModel_EAST}
\title{This class represents high-level API for text detection DL networks compatible with EAST model}
\usage{cvTextDetectionModel_EAST(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTextDetectionModel_EAST} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{This class represents high-level API for text detection DL networks compatible with EAST model.}
\details{
Configurable parameters:
\itemize{
\item (float) confThreshold - used to filter boxes by confidences, default: 0.5f
\item (float) nmsThreshold - used in non maximum suppression, default: 0.0f
}
\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
\strong{构造}
\preformatted{
cvTextDetectionModel_EAST(network)
cvTextDetectionModel_EAST(model, config = '')
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTextDetectionModel_EAST(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{detect(frame)}：Performs detection.
\item \code{detectTextRectangles(frame)}：Performs detection.
\item \code{enableWinograd(useWinograd)}
\item \code{getConfidenceThreshold()}：Get the detection confidence threshold.
\item \code{getNMSThreshold()}：Get the detection confidence threshold.
\item \code{predict(frame, outs = NULL)}：Given the \code{input} frame, create input blob, run net and return the output \code{blobs}.
\item \code{setConfidenceThreshold(confThreshold)}：Set the detection confidence threshold.
\item \code{setInputCrop(crop)}：Set flag crop for frame.
\item \code{setInputMean(mean)}：Set mean value for frame.
\item \code{setInputParams(scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE)}：Set preprocessing parameters for frame.
\item \code{setInputScale(scale)}：Set scalefactor value for frame.
\item \code{setInputSize(width, height)}
\item \code{setInputSwapRB(swapRB)}：Set flag swapRB for frame.
\item \code{setNMSThreshold(nmsThreshold)}：Set the detection NMS filter threshold.
\item \code{setOutputNames(outNames)}：Set output names for frame.
\item \code{setPreferableBackend(backendId)}
\item \code{setPreferableTarget(targetId)}：Member Data Documentation
}
}
\seealso{父类 \code{\link{cvTextDetectionModel}}（\code{cv::dnn::TextDetectionModel}）}
\keyword{opencv}
