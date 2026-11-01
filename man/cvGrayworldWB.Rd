% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvGrayworldWB}
\alias{cvGrayworldWB}
\title{Gray-world white balance algorithm}
\usage{cvGrayworldWB(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvGrayworldWB} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Gray-world white balance algorithm.}
\details{
This algorithm scales the values of pixels based on a gray-world assumption which states that the average of all channels should result in a gray image.
It adds a modification which thresholds pixels based on their saturation value and only uses pixels below the provided threshold in finding average pixel values.
Saturation is calculated using the following for a 3-channel RGB image per pixel I and is in the range [0, 1]:
A threshold of 1 means that all pixels are used to white-balance, while a threshold of 0 means no pixels are used. Lower thresholds are useful in white-balancing saturated images.
Currently supports images of type CV_8UC3 and CV_16UC3.
\strong{C++ 头文件：}\code{#include <opencv2/xphoto/white_balance.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvGrayworldWB(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{balanceWhite(src, dst = NULL)}：Applies white balancing to the input image.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getSaturationThreshold()}：Maximum saturation for a pixel to be included in the gray-world assumption.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setSaturationThreshold(val)}：Maximum saturation for a pixel to be included in the gray-world assumption.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvWhiteBalancer}}（\code{cv::xphoto::WhiteBalancer}）}
\keyword{opencv}
