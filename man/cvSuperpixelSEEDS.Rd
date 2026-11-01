% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSuperpixelSEEDS}
\alias{cvSuperpixelSEEDS}
\title{Class implementing the SEEDS (Superpixels Extracted via Energy-Driven Sampling) superpixels algorithm described in [283] }
\usage{cvSuperpixelSEEDS(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSuperpixelSEEDS} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the SEEDS (Superpixels Extracted via Energy-Driven Sampling) superpixels algorithm described in [283] .}
\details{
The algorithm uses an efficient hill-climbing algorithm to optimize the superpixels' energy function that is based on color histograms and a boundary term, which is optional. The energy function encourages superpixels to be of the same color, and if the boundary term is activated, the superpixels have smooth boundaries and are of similar shape. In practice it starts from a regular grid of superpixels and moves the pixels or blocks of pixels at the boundaries to refine the solution. The algorithm runs in real-time using a single CPU.
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/seeds.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSuperpixelSEEDS(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getLabelContourMask(dst = NULL, thick_line = FALSE)}：Returns the mask of the superpixel segmentation stored in SuperpixelSEEDS object.
\item \code{getLabels(dst = NULL)}：Returns the segmentation labeling of the image.
\item \code{getNumberOfSuperpixels()}：Calculates the superpixel segmentation on a given image stored in SuperpixelSEEDS object.
\item \code{iterate(img, num_iterations = 4)}：Calculates the superpixel segmentation on a given image with the initialized parameters in the SuperpixelSEEDS object.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
