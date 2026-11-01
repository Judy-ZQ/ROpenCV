% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvCLAHE}
\alias{cvCLAHE}
\title{Base class for Contrast Limited Adaptive Histogram Equalization}
\usage{cvCLAHE(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvCLAHE} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Base class for Contrast Limited Adaptive Histogram Equalization.}
\details{
C++ 类 \code{cv::CLAHE} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvCLAHE(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{apply(src, dst = NULL)}：Equalizes the histogram of a grayscale image using Contrast Limited Adaptive Histogram Equalization.
\item \code{clear()}：Clears the algorithm state.
\item \code{collectGarbage()}
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getClipLimit()}：Returns threshold value for contrast limiting.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getTilesGridSize()}：Returns Size defines the number of tiles in row and column.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setClipLimit(clipLimit)}：Sets threshold for contrast limiting.
\item \code{setTilesGridSize(tileGridSize)}：Sets size of grid for histogram equalization. Input image will be divided into equally sized rectangular tiles.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
