% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvLearningBasedWB}
\alias{cvLearningBasedWB}
\title{More sophisticated learning-based automatic white balance algorithm}
\usage{cvLearningBasedWB(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvLearningBasedWB} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{More sophisticated learning-based automatic white balance algorithm.}
\details{
As GrayworldWB, this algorithm works by applying different gains to the input image channels, but their computation is a bit more involved compared to the simple gray-world assumption. More details about the algorithm can be found in [55] .
To mask out saturated pixels this function uses only pixels that satisfy the following condition:
Currently supports images of type CV_8UC3 and CV_16UC3.
\strong{C++ 头文件：}\code{#include <opencv2/xphoto/white_balance.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvLearningBasedWB(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{balanceWhite(src, dst = NULL)}：Applies white balancing to the input image.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{extractSimpleFeatures(src, dst = NULL)}：Implements the feature extraction part of the algorithm.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getHistBinNum()}：Defines the size of one dimension of a three-dimensional RGB histogram that is used internally by the algorithm. It often makes sense to increase the number of bins for images with higher bit depth (e.g. 256 bins for a 12 bit image).
\item \code{getRangeMaxVal()}：Maximum possible value of the input image (e.g. 255 for 8 bit images, 4095 for 12 bit images)
\item \code{getSaturationThreshold()}：Threshold that is used to determine saturated pixels, i.e. pixels where at least one of the channels exceeds are ignored.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setHistBinNum(val)}：Defines the size of one dimension of a three-dimensional RGB histogram that is used internally by the algorithm. It often makes sense to increase the number of bins for images with higher bit depth (e.g. 256 bins for a 12 bit image).
\item \code{setRangeMaxVal(val)}：Maximum possible value of the input image (e.g. 255 for 8 bit images, 4095 for 12 bit images)
\item \code{setSaturationThreshold(val)}：Threshold that is used to determine saturated pixels, i.e. pixels where at least one of the channels exceeds are ignored.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvWhiteBalancer}}（\code{cv::xphoto::WhiteBalancer}）}
\keyword{opencv}
