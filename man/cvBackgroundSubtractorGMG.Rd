% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBackgroundSubtractorGMG}
\alias{cvBackgroundSubtractorGMG}
\title{Background Subtractor module based on the algorithm given in [107] }
\usage{cvBackgroundSubtractorGMG(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBackgroundSubtractorGMG} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Background Subtractor module based on the algorithm given in [107] .}
\details{
Takes a series of images and returns a sequence of mask (8UC1) images of the same size, where 255 indicates Foreground and 0 represents Background. This class implements an algorithm described in "Visual Tracking of Human Visitors under Variable-Lighting Conditions for a Responsive Audio Art Installation," A. Godbehere, A. Matsukawa, K. Goldberg, American Control Conference, Montreal, June 2012.
\strong{C++ 头文件：}\code{#include <opencv2/bgsegm.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBackgroundSubtractorGMG(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{apply(image, learningRate = -1, dst = NULL)}：Computes a foreground mask.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getBackgroundImage(dst = NULL)}：Computes a background image.
\item \code{getBackgroundPrior()}：Returns the prior probability that each individual pixel is a background pixel.
\item \code{getDecisionThreshold()}：Returns the value of decision threshold.
\item \code{getDefaultLearningRate()}：Returns the learning rate of the algorithm.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getMaxFeatures()}：Returns total number of distinct colors to maintain in histogram.
\item \code{getMaxVal()}：Returns the maximum value taken on by pixels in image sequence. e.g. 1.0 or 255.
\item \code{getMinVal()}：Returns the minimum value taken on by pixels in image sequence. Usually 0.
\item \code{getNumFrames()}：Returns the number of frames used to initialize background model.
\item \code{getQuantizationLevels()}：Returns the parameter used for quantization of color-space.
\item \code{getSmoothingRadius()}：Returns the kernel radius used for morphological operations.
\item \code{getUpdateBackgroundModel()}：Returns the status of background model update.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setBackgroundPrior(bgprior)}：Sets the prior probability that each individual pixel is a background pixel.
\item \code{setDecisionThreshold(thresh)}：Sets the value of decision threshold.
\item \code{setDefaultLearningRate(lr)}：Sets the learning rate of the algorithm.
\item \code{setMaxFeatures(maxFeatures)}：Sets total number of distinct colors to maintain in histogram.
\item \code{setMaxVal(val)}：Sets the maximum value taken on by pixels in image sequence.
\item \code{setMinVal(val)}：Sets the minimum value taken on by pixels in image sequence.
\item \code{setNumFrames(nframes)}：Sets the number of frames used to initialize background model.
\item \code{setQuantizationLevels(nlevels)}：Sets the parameter used for quantization of color-space.
\item \code{setSmoothingRadius(radius)}：Sets the kernel radius used for morphological operations.
\item \code{setUpdateBackgroundModel(update)}：Sets the status of background model update.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvBackgroundSubtractor}}（\code{cv::BackgroundSubtractor}）}
\keyword{opencv}
