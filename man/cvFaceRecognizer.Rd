% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvFaceRecognizer}
\alias{cvFaceRecognizer}
\title{Abstract base class for all face recognition models}
\usage{cvFaceRecognizer(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvFaceRecognizer} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Abstract base class for all face recognition models.}
\details{
All face recognition models in OpenCV are derived from the abstract base class FaceRecognizer, which provides a unified access to all face recongition algorithms in OpenCV.
I'll go a bit more into detail explaining FaceRecognizer, because it doesn't look like a powerful interface at first sight. But: Every FaceRecognizer is an Algorithm, so you can easily get/set all model internals (if allowed by the implementation). Algorithm is a relatively new OpenCV concept, which is available since the 2.4 release. I suggest you take a look at its description.
Algorithm provides the following features for all derived classes:
\itemize{
\item So called "virtual constructor". That is, each Algorithm derivative is registered at program start and you can get the list of registered algorithms and create instance of a particular algorithm by its name (see Algorithm::create). If you plan to add your own algorithms, it is good practice to add a unique prefix to your algorithms to distinguish them from other algorithms.
\item Setting/Retrieving algorithm parameters by name. If you used video capturing functionality from OpenCV highgui module, you are probably familar with cv::cvSetCaptureProperty, ocvcvGetCaptureProperty, VideoCapture::set and VideoCapture::get. Algorithm provides similar method where instead of integer id's you specify the parameter names as text Strings. See Algorithm::set and Algorithm::get for details.
\item Reading and writing parameters from/to XML or YAML files. Every Algorithm derivative can store all its parameters and then read them back. There is no need to re-implement it each time.
}
Moreover every FaceRecognizer supports the:
\itemize{
\item Training of a FaceRecognizer with FaceRecognizer::train on a given set of images (your face database!).
\item Prediction of a given sample image, that means a face. The image is given as a Mat.
\item Loading/Saving the model state from/to a given XML or YAML.
\item Setting/Getting labels info, that is stored as a string. String labels info is useful for keeping names of the recognized people.
}
Sometimes you run into the situation, when you want to apply a threshold on the prediction. A common scenario in face recognition is to tell, whether a face belongs to the training dataset or if it is unknown. You might wonder, why there's no public API in FaceRecognizer to set the threshold for the prediction, but rest assured: It's supported. It just means there's no generic way in an abstract class to provide an interface for setting/getting the thresholds of every possible FaceRecognizer algorithm. The appropriate place to set the thresholds is in the constructor of the specific FaceRecognizer and since every FaceRecognizer is a Algorithm (see above), you can get/set the thresholds at runtime!
Here is an example of setting a threshold for the Eigenfaces method, when creating the model:
\strong{C++ 头文件：}\code{#include <opencv2/face.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvFaceRecognizer(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getLabelInfo(label)}：Gets string information by label.
\item \code{getLabelsByString(str)}：Gets vector of labels by string.
\item \code{predict(src)}：Predicts a label and associated confidence (e.g. distance) for a given input image.
\item \code{read(filename)}：Loads a FaceRecognizer and its model state.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setLabelInfo(label, strInfo)}：Sets string info for the specified model's label.
\item \code{train(src, labels)}：Trains a FaceRecognizer with given data and associated labels.
\item \code{update(src, labels)}：Updates a FaceRecognizer with given data and associated labels.
\item \code{write(filename)}：Saves a FaceRecognizer and its model state.
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
