% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvFarnebackOpticalFlow}
\alias{cvFarnebackOpticalFlow}
\title{Class computing a dense optical flow using the Gunnar Farneback's algorithm}
\usage{cvFarnebackOpticalFlow(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvFarnebackOpticalFlow} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class computing a dense optical flow using the Gunnar Farneback's algorithm.}
\details{
C++ 类 \code{cv::FarnebackOpticalFlow} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
\strong{构造}
\preformatted{
cvFarnebackOpticalFlow(numLevels = 5, pyrScale = 0.5, fastPyramids = FALSE, winSize = 13, numIters = 10, polyN = 5, polySigma = 1.1, flags = 0)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvFarnebackOpticalFlow(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calc(I0, I1, flow = NULL)}：Calculates an optical flow.
\item \code{clear()}：Clears the algorithm state.
\item \code{collectGarbage()}：Releases all inner buffers.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getFastPyramids()}
\item \code{getFlags()}
\item \code{getNumIters()}
\item \code{getNumLevels()}
\item \code{getPolyN()}
\item \code{getPolySigma()}
\item \code{getPyrScale()}
\item \code{getWinSize()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setFastPyramids(fastPyramids)}
\item \code{setFlags(flags)}
\item \code{setNumIters(numIters)}
\item \code{setNumLevels(numLevels)}
\item \code{setPolyN(polyN)}
\item \code{setPolySigma(polySigma)}
\item \code{setPyrScale(pyrScale)}
\item \code{setWinSize(winSize)}
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvDenseOpticalFlow}}（\code{cv::DenseOpticalFlow}）}
\keyword{opencv}
