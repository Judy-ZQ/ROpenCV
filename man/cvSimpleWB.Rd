% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSimpleWB}
\alias{cvSimpleWB}
\title{A simple white balance algorithm that works by independently stretching each of the input image channels to the specified range}
\usage{cvSimpleWB(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSimpleWB} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{A simple white balance algorithm that works by independently stretching each of the input image channels to the specified range. For increased robustness it ignores the top and bottom of pixel values.}
\details{
C++ 类 \code{cv::xphoto::SimpleWB} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/xphoto/white_balance.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSimpleWB(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{balanceWhite(src, dst = NULL)}：Applies white balancing to the input image.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getInputMax()}：Input image range maximum value.
\item \code{getInputMin()}：Input image range minimum value.
\item \code{getOutputMax()}：Output image range maximum value.
\item \code{getOutputMin()}：Output image range minimum value.
\item \code{getP()}：Percent of top/bottom values to ignore.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setInputMax(val)}：Input image range maximum value.
\item \code{setInputMin(val)}：Input image range minimum value.
\item \code{setOutputMax(val)}：Output image range maximum value.
\item \code{setOutputMin(val)}：Output image range minimum value.
\item \code{setP(val)}：Percent of top/bottom values to ignore.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvWhiteBalancer}}（\code{cv::xphoto::WhiteBalancer}）}
\keyword{opencv}
