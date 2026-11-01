% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvLineSegmentDetector}
\alias{cvLineSegmentDetector}
\title{Line segment detector class}
\usage{cvLineSegmentDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvLineSegmentDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Line segment detector class.}
\details{
following the algorithm described at [291] .
\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvLineSegmentDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{compareSegments(size, lines1, lines2, image = NULL)}：Draws two groups of lines in blue and red, counting the non overlapping (mismatching) pixels.
\item \code{detect(image, lines = NULL, width = NULL, prec = NULL, nfa = NULL)}：Finds lines in the input image.
\item \code{drawSegments(image = NULL, lines)}：Draws the line segments on a given image.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
