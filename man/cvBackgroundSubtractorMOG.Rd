% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBackgroundSubtractorMOG}
\alias{cvBackgroundSubtractorMOG}
\title{Gaussian Mixture-based Background/Foreground Segmentation Algorithm}
\usage{cvBackgroundSubtractorMOG(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBackgroundSubtractorMOG} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Gaussian Mixture-based Background/Foreground Segmentation Algorithm.}
\details{
The class implements the algorithm described in [138] .
\strong{C++ 头文件：}\code{#include <opencv2/bgsegm.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBackgroundSubtractorMOG(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{apply(image, learningRate = -1, dst = NULL)}：Computes a foreground mask.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getBackgroundImage(dst = NULL)}：Computes a background image.
\item \code{getBackgroundRatio()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getHistory()}
\item \code{getNMixtures()}
\item \code{getNoiseSigma()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setBackgroundRatio(backgroundRatio)}
\item \code{setHistory(nframes)}
\item \code{setNMixtures(nmix)}
\item \code{setNoiseSigma(noiseSigma)}
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvBackgroundSubtractor}}（\code{cv::BackgroundSubtractor}）}
\keyword{opencv}
