% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBackgroundSubtractorKNN}
\alias{cvBackgroundSubtractorKNN}
\title{K-nearest neighbours - based Background/Foreground Segmentation Algorithm}
\usage{cvBackgroundSubtractorKNN(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBackgroundSubtractorKNN} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{K-nearest neighbours - based Background/Foreground Segmentation Algorithm.}
\details{
The class implements the K-nearest neighbours background subtraction described in [325] . Very efficient if number of foreground pixels is low.
\strong{C++ 头文件：}\code{#include <opencv2/video/background_segm.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBackgroundSubtractorKNN(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{apply(image, learningRate = -1, dst = NULL)}：Computes a foreground mask.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getBackgroundImage(dst = NULL)}：Computes a background image.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDetectShadows()}：Returns the shadow detection flag.
\item \code{getDist2Threshold()}：Returns the threshold on the squared distance between the pixel and the sample.
\item \code{getHistory()}：Returns the number of last frames that affect the background model.
\item \code{getNSamples()}：Returns the number of data samples in the background model.
\item \code{getShadowThreshold()}：Returns the shadow threshold.
\item \code{getShadowValue()}：Returns the shadow value.
\item \code{getkNNSamples()}：Returns the number of neighbours, the k in the kNN.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setDetectShadows(detectShadows)}：Enables or disables shadow detection.
\item \code{setDist2Threshold(dist2Threshold)}：Sets the threshold on the squared distance.
\item \code{setHistory(history)}：Sets the number of last frames that affect the background model.
\item \code{setNSamples(nN)}：Sets the number of data samples in the background model.
\item \code{setShadowThreshold(threshold)}：Sets the shadow threshold.
\item \code{setShadowValue(value)}：Sets the shadow value.
\item \code{setkNNSamples(nkNN)}：Sets the k in the kNN. How many nearest neighbours need to match.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvBackgroundSubtractor}}（\code{cv::BackgroundSubtractor}）}
\keyword{opencv}
