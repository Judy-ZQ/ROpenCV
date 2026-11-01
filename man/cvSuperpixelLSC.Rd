% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSuperpixelLSC}
\alias{cvSuperpixelLSC}
\title{Class implementing the LSC (Linear Spectral Clustering) superpixels algorithm described in [161]}
\usage{cvSuperpixelLSC(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSuperpixelLSC} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the LSC (Linear Spectral Clustering) superpixels algorithm described in [161].}
\details{
LSC (Linear Spectral Clustering) produces compact and uniform superpixels with low computational costs. Basically, a normalized cuts formulation of the superpixel segmentation is adopted based on a similarity metric that measures the color similarity and space proximity between image pixels. LSC is of linear computational complexity and high memory efficiency and is able to preserve global properties of images
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/lsc.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSuperpixelLSC(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{enforceLabelConnectivity(min_element_size = 25)}：Enforce label connectivity.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getLabelContourMask(dst = NULL, thick_line = TRUE)}：Returns the mask of the superpixel segmentation stored in SuperpixelLSC object.
\item \code{getLabels(dst = NULL)}：Returns the segmentation labeling of the image.
\item \code{getNumberOfSuperpixels()}：Calculates the actual amount of superpixels on a given segmentation computed and stored in SuperpixelLSC object.
\item \code{iterate(num_iterations = 10)}：Calculates the superpixel segmentation on a given image with the initialized parameters in the SuperpixelLSC object.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
