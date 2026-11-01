% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvFaceDetectorYN}
\alias{cvFaceDetectorYN}
\title{DNN-based face detector}
\usage{cvFaceDetectorYN(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvFaceDetectorYN} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{DNN-based face detector.}
\details{
model download link: https://github.com/opencv/opencv_zoo/tree/master/models/face_detection_yunet
\strong{C++ 头文件：}\code{#include <opencv2/objdetect/face.hpp>}
\strong{构造}
\preformatted{
cvFaceDetectorYN(model, config, input_size, score_threshold = 0.9, nms_threshold = 0.3, top_k = 5000, backend_id = 0, target_id = 0)
cvFaceDetectorYN(framework, bufferModel, bufferConfig, input_size, score_threshold = 0.9, nms_threshold = 0.3, top_k = 5000, backend_id = 0, target_id = 0)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvFaceDetectorYN(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{detect(image, dst = NULL)}：Detects faces in the input image. Following is an example output.
\item \code{getInputSize()}
\item \code{getNMSThreshold()}
\item \code{getScoreThreshold()}
\item \code{getTopK()}
\item \code{setInputSize(input_size)}：Set the size for the network input, which overwrites the input size of creating model. Call this method when the size of input image does not match the input size when creating model.
\item \code{setNMSThreshold(nms_threshold)}：Set the Non-maximum-suppression threshold to suppress bounding boxes that have IoU greater than the given value.
\item \code{setScoreThreshold(score_threshold)}：Set the score threshold to filter out bounding boxes of score less than the given value.
\item \code{setTopK(top_k)}：Set the number of bounding boxes preserved before NMS.
}
}
\keyword{opencv}
