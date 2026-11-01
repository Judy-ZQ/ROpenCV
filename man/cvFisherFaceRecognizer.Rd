% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvFisherFaceRecognizer}
\alias{cvFisherFaceRecognizer}
\title{cv::face::FisherFaceRecognizer}
\usage{cvFisherFaceRecognizer(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvFisherFaceRecognizer} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::face::FisherFaceRecognizer} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::face::FisherFaceRecognizer} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/face/facerec.hpp>}
\strong{构造}
\preformatted{
cvFisherFaceRecognizer(num_components = 0, threshold = Inf)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvFisherFaceRecognizer(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getEigenValues()}
\item \code{getEigenVectors()}
\item \code{getLabelInfo(label)}：Gets string information by label.
\item \code{getLabels()}
\item \code{getLabelsByString(str)}：Gets vector of labels by string.
\item \code{getMean()}
\item \code{getNumComponents()}
\item \code{getProjections()}
\item \code{getThreshold()}：Implements cv::face::FaceRecognizer.
\item \code{predict(src)}：Predicts a label and associated confidence (e.g. distance) for a given input image.
\item \code{read(filename)}：Loads a FaceRecognizer and its model state.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setLabelInfo(label, strInfo)}：Sets string info for the specified model's label.
\item \code{setNumComponents(val)}
\item \code{setThreshold(val)}：Implements cv::face::FaceRecognizer.
\item \code{train(src, labels)}：Trains a FaceRecognizer with given data and associated labels.
\item \code{update(src, labels)}：Updates a FaceRecognizer with given data and associated labels.
\item \code{write(filename)}：Saves a FaceRecognizer and its model state.
}
}
\seealso{父类 \code{\link{cvBasicFaceRecognizer}}（\code{cv::face::BasicFaceRecognizer}）}
\keyword{opencv}
