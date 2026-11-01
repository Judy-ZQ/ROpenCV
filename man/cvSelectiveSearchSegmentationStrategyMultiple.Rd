% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSelectiveSearchSegmentationStrategyMultiple}
\alias{cvSelectiveSearchSegmentationStrategyMultiple}
\title{Regroup multiple strategies for the selective search segmentation algorithm}
\usage{cvSelectiveSearchSegmentationStrategyMultiple(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSelectiveSearchSegmentationStrategyMultiple} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Regroup multiple strategies for the selective search segmentation algorithm.}
\details{
C++ 类 \code{cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyMultiple} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/segmentation.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSelectiveSearchSegmentationStrategyMultiple(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{addStrategy(g, weight)}：Add a new sub-strategy.
\item \code{clear()}：Clears the algorithm state.
\item \code{clearStrategies()}：Remove all sub-strategies.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{get(r1, r2)}：Return the score between two regions (between 0 and 1)
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{merge(r1, r2)}：Inform the strategy that two regions will be merged.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setImage(img, regions, sizes, image_id = -1)}：Set a initial image, with a segmentation.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvSelectiveSearchSegmentationStrategy}}（\code{cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy}）}
\keyword{opencv}
