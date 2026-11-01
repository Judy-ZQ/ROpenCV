% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSparseRLOFOpticalFlow}
\alias{cvSparseRLOFOpticalFlow}
\title{Class used for calculation sparse optical flow and feature tracking with robust local optical flow (RLOF) algorithms}
\usage{cvSparseRLOFOpticalFlow(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSparseRLOFOpticalFlow} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class used for calculation sparse optical flow and feature tracking with robust local optical flow (RLOF) algorithms.}
\details{
The RLOF is a fast local optical flow approach described in [239] [240] [241] and [242] similar to the pyramidal iterative Lucas-Kanade method as proposed by [36]. More details and experiments can be found in the following thesis [243]. The implementation is derived from optflow::calcOpticalFlowPyrLK .
For the RLOF configuration see optflow::RLOFOpticalFlowParameter for further details. Parameters have been described in [239], [240], [241] and [242].
\strong{C++ 头文件：}\code{#include <opencv2/optflow/rlofflow.hpp>}
\strong{构造}
\preformatted{
cvSparseRLOFOpticalFlow(rlofParam = NULL, forwardBackwardThreshold = 1)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSparseRLOFOpticalFlow(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calc(prevImg, nextImg, prevPts, nextPts = NULL, status = NULL, err = NULL)}：Calculates a sparse optical flow.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getForwardBackward()}：Threshold for the forward backward confidence check.
\item \code{getRLOFOpticalFlowParameter()}：Configuration of the RLOF alogrithm.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setForwardBackward(val)}：Threshold for the forward backward confidence check.
\item \code{setRLOFOpticalFlowParameter(val)}：Configuration of the RLOF alogrithm.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvSparseOpticalFlow}}（\code{cv::SparseOpticalFlow}）}
\keyword{opencv}
