% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSparseOpticalFlow}
\alias{cvSparseOpticalFlow}
\title{Base interface for sparse optical flow algorithms}
\usage{cvSparseOpticalFlow(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSparseOpticalFlow} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Base interface for sparse optical flow algorithms.}
\details{
C++ 类 \code{cv::SparseOpticalFlow} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSparseOpticalFlow(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calc(prevImg, nextImg, prevPts, nextPts = NULL, status = NULL, err = NULL)}：Calculates a sparse optical flow.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
