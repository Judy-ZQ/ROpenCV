% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSparsePyrLKOpticalFlow}
\alias{cvSparsePyrLKOpticalFlow}
\title{Class used for calculating a sparse optical flow}
\usage{cvSparsePyrLKOpticalFlow(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSparsePyrLKOpticalFlow} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class used for calculating a sparse optical flow.}
\details{
The class can calculate an optical flow for a sparse feature set using the iterative Lucas-Kanade method with pyramids.
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
\strong{构造}
\preformatted{
cvSparsePyrLKOpticalFlow(winSize = c(21, 21), maxLevel = 3, crit = c(5, 30, 0.01), flags = 0, minEigThreshold = 1e-4)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSparsePyrLKOpticalFlow(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calc(prevImg, nextImg, prevPts, nextPts = NULL, status = NULL, err = NULL)}：Calculates a sparse optical flow.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getFlags()}
\item \code{getMaxLevel()}
\item \code{getMinEigThreshold()}
\item \code{getTermCriteria()}
\item \code{getWinSize()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setFlags(flags)}
\item \code{setMaxLevel(maxLevel)}
\item \code{setMinEigThreshold(minEigThreshold)}
\item \code{setTermCriteria(crit = NULL)}
\item \code{setWinSize(winSize)}
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvSparseOpticalFlow}}（\code{cv::SparseOpticalFlow}）}
\keyword{opencv}
