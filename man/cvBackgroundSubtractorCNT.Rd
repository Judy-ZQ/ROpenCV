% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBackgroundSubtractorCNT}
\alias{cvBackgroundSubtractorCNT}
\title{Background subtraction based on counting}
\usage{cvBackgroundSubtractorCNT(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBackgroundSubtractorCNT} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Background subtraction based on counting.}
\details{
About as fast as MOG2 on a high end system. More than twice faster than MOG2 on cheap hardware (benchmarked on Raspberry Pi3).
Algorithm by Sagi Zeevi ( https://github.com/sagi-z/BackgroundSubtractorCNT )
\strong{C++ 头文件：}\code{#include <opencv2/bgsegm.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBackgroundSubtractorCNT(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{apply(image, learningRate = -1, dst = NULL)}：Computes a foreground mask.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getBackgroundImage(dst = NULL)}：Computes a background image.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getIsParallel()}：Returns if we're parallelizing the algorithm.
\item \code{getMaxPixelStability()}：Returns maximum allowed credit for a pixel in history.
\item \code{getMinPixelStability()}：Returns number of frames with same pixel color to consider stable.
\item \code{getUseHistory()}：Returns if we're giving a pixel credit for being stable for a long time.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setIsParallel(value)}：Sets if we're parallelizing the algorithm.
\item \code{setMaxPixelStability(value)}：Sets the maximum allowed credit for a pixel in history.
\item \code{setMinPixelStability(value)}：Sets the number of frames with same pixel color to consider stable.
\item \code{setUseHistory(value)}：Sets if we're giving a pixel credit for being stable for a long time.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvBackgroundSubtractor}}（\code{cv::BackgroundSubtractor}）}
\keyword{opencv}
