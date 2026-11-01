% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvCCheckerDetector}
\alias{cvCCheckerDetector}
\title{A class to find the positions of the ColorCharts in the image}
\usage{cvCCheckerDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvCCheckerDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{A class to find the positions of the ColorCharts in the image.}
\details{
C++ 类 \code{cv::mcc::CCheckerDetector} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/mcc/checker_detector.hpp>}
\strong{构造}
\preformatted{
cvCCheckerDetector()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvCCheckerDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getBestColorChecker()}：Get the best color checker. By the best it means the one detected with the highest confidence.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getListColorChecker()}：Get the list of all detected colorcheckers.
\item \code{process(image, chartType, nc = 1, useNet = FALSE, params = NULL)}：Find the ColorCharts in the given image.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setNet(net)}：Set the net which will be used to find the approximate bounding boxes for the color charts.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
