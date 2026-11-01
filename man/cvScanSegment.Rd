% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvScanSegment}
\alias{cvScanSegment}
\title{Class implementing the F-DBSCAN (Accelerated superpixel image segmentation with a parallelized DBSCAN algorithm) superpixels algorithm by L}
\usage{cvScanSegment(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvScanSegment} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the F-DBSCAN (Accelerated superpixel image segmentation with a parallelized DBSCAN algorithm) superpixels algorithm by Loke SC, et al. [171] for original paper.}
\details{
The algorithm uses a parallelised DBSCAN cluster search that is resistant to noise, competitive in segmentation quality, and faster than existing superpixel segmentation methods. When tested on the Berkeley Segmentation Dataset, the average processing speed is 175 frames/s with a Boundary Recall of 0.797 and an Achievable Segmentation Accuracy of 0.944. The computational complexity is quadratic O(n2) and more suited to smaller images, but can still process a 2MP colour image faster than the SEEDS algorithm in OpenCV. The output is deterministic when the number of processing threads is fixed, and requires the source image to be in Lab colour format.
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/scansegment.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvScanSegment(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getLabelContourMask(dst = NULL, thick_line = FALSE)}：Returns the mask of the superpixel segmentation stored in the ScanSegment object.
\item \code{getLabels(dst = NULL)}：Returns the segmentation labeling of the image.
\item \code{getNumberOfSuperpixels()}：Returns the actual superpixel segmentation from the last image processed using iterate.
\item \code{iterate(img)}：Calculates the superpixel segmentation on a given image with the initialized parameters in the ScanSegment object.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
