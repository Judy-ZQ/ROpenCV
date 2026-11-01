% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTextDetectionModel_DB}
\alias{cvTextDetectionModel_DB}
\title{This class represents high-level API for text detection DL networks compatible with DB model}
\usage{cvTextDetectionModel_DB(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTextDetectionModel_DB} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{This class represents high-level API for text detection DL networks compatible with DB model.}
\details{
Related publications: [167] Paper: https://arxiv.org/abs/1911.08947 For more information about the hyper-parameters setting, please refer to https://github.com/MhLiao/DB
Configurable parameters:
\itemize{
\item (float) binaryThreshold - The threshold of the binary map. It is usually set to 0.3.
\item (float) polygonThreshold - The threshold of text polygons. It is usually set to 0.5, 0.6, and 0.7. Default is 0.5f
\item (double) unclipRatio - The unclip ratio of the detected text region, which determines the output size. It is usually set to 2.0.
\item (int) maxCandidates - The max number of the output results.
}
\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
\strong{构造}
\preformatted{
cvTextDetectionModel_DB(network)
cvTextDetectionModel_DB(model, config = '')
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTextDetectionModel_DB(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{detect(frame)}：Performs detection.
\item \code{detectTextRectangles(frame)}：Performs detection.
\item \code{enableWinograd(useWinograd)}
\item \code{getBinaryThreshold()}
\item \code{getMaxCandidates()}
\item \code{getPolygonThreshold()}
\item \code{getUnclipRatio()}
\item \code{predict(frame, outs = NULL)}：Given the \code{input} frame, create input blob, run net and return the output \code{blobs}.
\item \code{setBinaryThreshold(binaryThreshold)}
\item \code{setInputCrop(crop)}：Set flag crop for frame.
\item \code{setInputMean(mean)}：Set mean value for frame.
\item \code{setInputParams(scale = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE)}：Set preprocessing parameters for frame.
\item \code{setInputScale(scale)}：Set scalefactor value for frame.
\item \code{setInputSize(width, height)}
\item \code{setInputSwapRB(swapRB)}：Set flag swapRB for frame.
\item \code{setMaxCandidates(maxCandidates)}
\item \code{setOutputNames(outNames)}：Set output names for frame.
\item \code{setPolygonThreshold(polygonThreshold)}
\item \code{setPreferableBackend(backendId)}
\item \code{setPreferableTarget(targetId)}：Member Data Documentation
\item \code{setUnclipRatio(unclipRatio)}
}
}
\seealso{父类 \code{\link{cvTextDetectionModel}}（\code{cv::dnn::TextDetectionModel}）}
\keyword{opencv}
