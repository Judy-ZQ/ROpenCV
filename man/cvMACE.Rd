% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvMACE}
\alias{cvMACE}
\title{Minimum Average Correlation Energy Filter useful for authentication with (cancellable) biometrical features}
\usage{cvMACE(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvMACE} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Minimum Average Correlation Energy Filter useful for authentication with (cancellable) biometrical features. (does not need many positives to train (10-50), and no negatives at all, also robust to noise/salting)}
\details{
see also: [237]
this implementation is largely based on: https://code.google.com/archive/p/pam-face-authentication (GSOC 2009)
use it like:
\strong{C++ 头文件：}\code{#include <opencv2/face/mace.hpp>}
\strong{构造}
\preformatted{
cvMACE(IMGSIZE = 64)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvMACE(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{salt(passphrase)}：optionally encrypt images with random convolution
\item \code{same(query)}：correlate query img and threshold to min class value
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{train(images)}：train it on positive features compute the mace filter: \code{h = D(-1) * X * (X(+) * D(-1) * X)(-1) * C} also calculate a minimal threshold for this class, the smallest self-similarity from the train images
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
