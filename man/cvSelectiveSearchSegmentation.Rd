% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSelectiveSearchSegmentation}
\alias{cvSelectiveSearchSegmentation}
\title{Selective search segmentation algorithm The class implements the algorithm described in [278]}
\usage{cvSelectiveSearchSegmentation(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSelectiveSearchSegmentation} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Selective search segmentation algorithm The class implements the algorithm described in [278].}
\details{
C++ 类 \code{cv::ximgproc::segmentation::SelectiveSearchSegmentation} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/segmentation.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSelectiveSearchSegmentation(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{addGraphSegmentation(g)}：Add a new graph segmentation in the list of graph segementations to process.
\item \code{addImage(img)}：Add a new image in the list of images to process.
\item \code{addStrategy(obj)}：Add a new strategy in the list of strategy to process.
\item \code{clear()}：Clears the algorithm state.
\item \code{clearGraphSegmentations()}：Clear the list of graph segmentations to process;.
\item \code{clearImages()}：Clear the list of images to process.
\item \code{clearStrategies()}：Clear the list of strategy to process;.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{process()}：Based on all images, graph segmentations and stragies, computes all possible rects and return them.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setBaseImage(img)}：Set a image used by switch* functions to initialize the class.
\item \code{switchToSelectiveSearchFast(base_k = 150, inc_k = 150, sigma = 0.8)}：Initialize the class with the 'Selective search fast' parameters describled in [278].
\item \code{switchToSelectiveSearchQuality(base_k = 150, inc_k = 150, sigma = 0.8)}：Initialize the class with the 'Selective search fast' parameters describled in [278].
\item \code{switchToSingleStrategy(k = 200, sigma = 0.8)}：Initialize the class with the 'Single stragegy' parameters describled in [278].
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
