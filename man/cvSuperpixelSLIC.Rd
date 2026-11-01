% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSuperpixelSLIC}
\alias{cvSuperpixelSLIC}
\title{Class implementing the SLIC (Simple Linear Iterative Clustering) superpixels algorithm described in [1]}
\usage{cvSuperpixelSLIC(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSuperpixelSLIC} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the SLIC (Simple Linear Iterative Clustering) superpixels algorithm described in [1].}
\details{
SLIC (Simple Linear Iterative Clustering) clusters pixels using pixel channels and image plane space to efficiently generate compact, nearly uniform superpixels. The simplicity of approach makes it extremely easy to use a lone parameter specifies the number of superpixels and the efficiency of the algorithm makes it very practical. Several optimizations are available for SLIC class: SLICO stands for "Zero parameter SLIC" and it is an optimization of baseline SLIC described in [1]. MSLIC stands for "Manifold SLIC" and it is an optimization of baseline SLIC described in [170].
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/slic.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSuperpixelSLIC(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{enforceLabelConnectivity(min_element_size = 25)}：Enforce label connectivity.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getLabelContourMask(dst = NULL, thick_line = TRUE)}：Returns the mask of the superpixel segmentation stored in SuperpixelSLIC object.
\item \code{getLabels(dst = NULL)}：Returns the segmentation labeling of the image.
\item \code{getNumberOfSuperpixels()}：Calculates the actual amount of superpixels on a given segmentation computed and stored in SuperpixelSLIC object.
\item \code{iterate(num_iterations = 10)}：Calculates the superpixel segmentation on a given image with the initialized parameters in the SuperpixelSLIC object.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
