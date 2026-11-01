% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvAlignMTB}
\alias{cvAlignMTB}
\title{This algorithm converts images to median threshold bitmaps (1 for pixels brighter than median luminance and 0 otherwise) and than aligns th}
\usage{cvAlignMTB(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvAlignMTB} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{This algorithm converts images to median threshold bitmaps (1 for pixels brighter than median luminance and 0 otherwise) and than aligns the resulting bitmaps using bit operations.}
\details{
It is invariant to exposure, so exposure values and camera response are not necessary.
In this implementation new image regions are filled with zeros.
For more information see [296] .
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvAlignMTB(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calculateShift(img0, img1)}：Calculates shift between two images, i. e. how to shift the second image to correspond it with the first.
\item \code{clear()}：Clears the algorithm state.
\item \code{computeBitmaps(img, tb = NULL, eb = NULL)}：Computes median threshold and exclude bitmaps of given image.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getCut()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getExcludeRange()}
\item \code{getMaxBits()}
\item \code{process(src, dst = NULL, times, response)}：Short version of process, that doesn't take extra arguments.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setCut(value)}
\item \code{setExcludeRange(exclude_range)}
\item \code{setMaxBits(max_bits)}
\item \code{shiftMat(src, shift, dst = NULL)}：Helper function, that shift Mat filling new regions with zeros.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlignExposures}}（\code{cv::AlignExposures}）}
\keyword{opencv}
