% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvPCTSignaturesSQFD}
\alias{cvPCTSignaturesSQFD}
\title{Class implementing Signature Quadratic Form Distance (SQFD)}
\usage{cvPCTSignaturesSQFD(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvPCTSignaturesSQFD} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing Signature Quadratic Form Distance (SQFD).}
\details{
C++ 类 \code{cv::xfeatures2d::PCTSignaturesSQFD} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d.hpp>}
\strong{构造}
\preformatted{
cvPCTSignaturesSQFD(distanceFunction = 3, similarityFunction = 2, similarityParameter = 1.0)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvPCTSignaturesSQFD(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{computeQuadraticFormDistance(signature0, signature1)}：Computes Signature Quadratic Form Distance of two signatures.
\item \code{computeQuadraticFormDistances(sourceSignature, imageSignatures, distances = NULL)}：Computes Signature Quadratic Form Distance between the reference signature and each of the other image signatures.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
