% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvGraphSegmentation}
\alias{cvGraphSegmentation}
\title{Graph Based Segmentation Algorithm}
\usage{cvGraphSegmentation(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvGraphSegmentation} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Graph Based Segmentation Algorithm. The class implements the algorithm described in [86] .}
\details{
C++ 类 \code{cv::ximgproc::segmentation::GraphSegmentation} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/segmentation.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvGraphSegmentation(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getK()}
\item \code{getMinSize()}
\item \code{getSigma()}
\item \code{processImage(src, dst = NULL)}：Segment an image and store output in dst.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setK(k)}
\item \code{setMinSize(min_size)}
\item \code{setSigma(sigma)}
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
