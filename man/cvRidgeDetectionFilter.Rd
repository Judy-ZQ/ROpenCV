% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvRidgeDetectionFilter}
\alias{cvRidgeDetectionFilter}
\title{Applies Ridge Detection Filter to an input image}
\usage{cvRidgeDetectionFilter(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvRidgeDetectionFilter} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Applies Ridge Detection Filter to an input image. Implements Ridge detection similar to the one in Mathematica using the eigen values from the Hessian Matrix of the input image using Sobel Derivatives. Additional refinement can be done using Skeletonization and Binarization. Adapted from [79] and [187].}
\details{
C++ 类 \code{cv::ximgproc::RidgeDetectionFilter} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/ridgefilter.hpp>}
\strong{构造}
\preformatted{
cvRidgeDetectionFilter(ddepth = CV_32FC1, dx = 1, dy = 1, ksize = 3, out_dtype = CV_8UC1, scale = 1, delta = 0, borderType = BORDER_DEFAULT)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvRidgeDetectionFilter(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getRidgeFilteredImage(img, dst = NULL)}：Apply Ridge detection filter on input image.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
