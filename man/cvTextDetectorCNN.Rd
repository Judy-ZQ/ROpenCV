% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTextDetectorCNN}
\alias{cvTextDetectorCNN}
\title{TextDetectorCNN class provides the functionallity of text bounding box detection}
\usage{cvTextDetectorCNN(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTextDetectorCNN} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{TextDetectorCNN class provides the functionallity of text bounding box detection. This class is representing to find bounding boxes of text words given an input image. This class uses OpenCV dnn module to load pre-trained model described in [166]. The original repository with the modified SSD Caffe version: https://github.com/MhLiao/TextBoxes. Model can be downloaded from DropBox. Modified .prototxt file with the model description can be found in \code{opencv_contrib/modules/text/samples/textbox.prototxt}.}
\details{
C++ 类 \code{cv::text::TextDetectorCNN} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/text/textDetector.hpp>}
\strong{构造}
\preformatted{
cvTextDetectorCNN(modelArchFilename, modelWeightsFilename)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTextDetectorCNN(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{detect(inputImage)}
}
}
\seealso{父类 \code{\link{cvTextDetector}}（\code{cv::text::TextDetector}）}
\keyword{opencv}
