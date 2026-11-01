% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBinaryDescriptor}
\alias{cvBinaryDescriptor}
\title{Class implements both functionalities for detection of lines and computation of their binary descriptor}
\usage{cvBinaryDescriptor(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBinaryDescriptor} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implements both functionalities for detection of lines and computation of their binary descriptor.}
\details{
Class' interface is mainly based on the ones of classical detectors and extractors, such as Feature2d's Feature Detection and Description and Descriptor Matchers. Retrieved information about lines is stored in line_descriptor::KeyLine objects.
\strong{C++ 头文件：}\code{#include <opencv2/line_descriptor/descriptor.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBinaryDescriptor(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{compute(image, returnFloatDescr = FALSE)}：Requires descriptors computation.
\item \code{detect(image, mask = NULL)}：Requires line detection.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getNumOfOctaves()}：Get current number of octaves.
\item \code{getReductionRatio()}：Get current reduction ratio (used in Gaussian pyramids)
\item \code{getWidthOfBand()}：Get current width of bands.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setNumOfOctaves(octaves)}：Set number of octaves.
\item \code{setReductionRatio(rRatio)}：Set reduction ratio (used in Gaussian pyramids)
\item \code{setWidthOfBand(width)}：Set width of bands.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
