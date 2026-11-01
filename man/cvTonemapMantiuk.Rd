% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTonemapMantiuk}
\alias{cvTonemapMantiuk}
\title{This algorithm transforms image to contrast using gradients on all levels of gaussian pyramid, transforms contrast values to HVS response a}
\usage{cvTonemapMantiuk(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTonemapMantiuk} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{This algorithm transforms image to contrast using gradients on all levels of gaussian pyramid, transforms contrast values to HVS response and scales the response. After this the image is reconstructed from new contrast values.}
\details{
For more information see [182] .
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTonemapMantiuk(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getGamma()}
\item \code{getSaturation()}
\item \code{getScale()}
\item \code{process(src, dst = NULL)}：Tonemaps image.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setGamma(gamma)}
\item \code{setSaturation(saturation)}
\item \code{setScale(scale)}
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvTonemap}}（\code{cv::Tonemap}）}
\keyword{opencv}
