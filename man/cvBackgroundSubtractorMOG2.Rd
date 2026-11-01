% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBackgroundSubtractorMOG2}
\alias{cvBackgroundSubtractorMOG2}
\title{Gaussian Mixture-based Background/Foreground Segmentation Algorithm}
\usage{cvBackgroundSubtractorMOG2(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBackgroundSubtractorMOG2} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Gaussian Mixture-based Background/Foreground Segmentation Algorithm.}
\details{
The class implements the Gaussian mixture model background subtraction described in [326] and [325] .
\strong{C++ 头文件：}\code{#include <opencv2/video/background_segm.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBackgroundSubtractorMOG2(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{apply(image, learningRate = -1, dst = NULL)}：Computes a foreground mask.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getBackgroundImage(dst = NULL)}：Computes a background image.
\item \code{getBackgroundRatio()}：Returns the "background ratio" parameter of the algorithm.
\item \code{getComplexityReductionThreshold()}：Returns the complexity reduction threshold.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDetectShadows()}：Returns the shadow detection flag.
\item \code{getHistory()}：Returns the number of last frames that affect the background model.
\item \code{getNMixtures()}：Returns the number of gaussian components in the background model.
\item \code{getShadowThreshold()}：Returns the shadow threshold.
\item \code{getShadowValue()}：Returns the shadow value.
\item \code{getVarInit()}：Returns the initial variance of each gaussian component.
\item \code{getVarMax()}
\item \code{getVarMin()}
\item \code{getVarThreshold()}：Returns the variance threshold for the pixel-model match.
\item \code{getVarThresholdGen()}：Returns the variance threshold for the pixel-model match used for new mixture component generation.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setBackgroundRatio(ratio)}：Sets the "background ratio" parameter of the algorithm.
\item \code{setComplexityReductionThreshold(ct)}：Sets the complexity reduction threshold.
\item \code{setDetectShadows(detectShadows)}：Enables or disables shadow detection.
\item \code{setHistory(history)}：Sets the number of last frames that affect the background model.
\item \code{setNMixtures(nmixtures)}：Sets the number of gaussian components in the background model.
\item \code{setShadowThreshold(threshold)}：Sets the shadow threshold.
\item \code{setShadowValue(value)}：Sets the shadow value.
\item \code{setVarInit(varInit)}：Sets the initial variance of each gaussian component.
\item \code{setVarMax(varMax)}
\item \code{setVarMin(varMin)}
\item \code{setVarThreshold(varThreshold)}：Sets the variance threshold for the pixel-model match.
\item \code{setVarThresholdGen(varThresholdGen)}：Sets the variance threshold for the pixel-model match used for new mixture component generation.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvBackgroundSubtractor}}（\code{cv::BackgroundSubtractor}）}
\keyword{opencv}
