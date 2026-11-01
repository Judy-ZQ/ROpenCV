% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvFastLineDetector}
\alias{cvFastLineDetector}
\title{Class implementing the FLD (Fast Line Detector) algorithm described in [156] }
\usage{cvFastLineDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvFastLineDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the FLD (Fast Line Detector) algorithm described in [156] .}
\details{
C++ 类 \code{cv::ximgproc::FastLineDetector} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/fast_line_detector.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvFastLineDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{detect(image, dst = NULL)}：Finds lines in the input image. This is the output of the default parameters of the algorithm on the above shown image.
\item \code{drawSegments(image = NULL, lines, draw_arrow = FALSE, linecolor = c(0, 0, 255), linethickness = 1)}：Draws the line segments on a given image.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
