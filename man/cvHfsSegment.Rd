% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvHfsSegment}
\alias{cvHfsSegment}
\title{cv::hfs::HfsSegment}
\usage{cvHfsSegment(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvHfsSegment} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::hfs::HfsSegment} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::hfs::HfsSegment} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/hfs.hpp>}
\strong{构造}
\preformatted{
cvHfsSegment(height, width, segEgbThresholdI = 0.08, minRegionSizeI = 100, segEgbThresholdII = 0.28, minRegionSizeII = 200, spatialWeight = 0.6, slicSpixelSize = 8, numSlicIter = 5)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvHfsSegment(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getMinRegionSizeI()}
\item \code{getMinRegionSizeII()}
\item \code{getNumSlicIter()}
\item \code{getSegEgbThresholdI()}
\item \code{getSegEgbThresholdII()}
\item \code{getSlicSpixelSize()}
\item \code{getSpatialWeight()}
\item \code{performSegmentCpu(src, ifDraw = TRUE)}：do segmentation with cpu This method is only implemented for reference. It is highly NOT recommanded to use it.
\item \code{performSegmentGpu(src, ifDraw = TRUE)}：do segmentation gpu
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setMinRegionSizeI(n)}：: set and get the parameter minRegionSizeI. This parameter is used in the second stage mentioned above. After the EGB segmentation, regions that have fewer pixels then this parameter will be merged into it's adjacent region.
\item \code{setMinRegionSizeII(n)}：: set and get the parameter minRegionSizeII. This parameter is used in the third stage mentioned above. It serves the same purpose as minRegionSizeI
\item \code{setNumSlicIter(n)}：: set and get the parameter numSlicIter. This parameter is used in the first stage. It describes how many iteration to perform when executing SLIC.
\item \code{setSegEgbThresholdI(c)}：: set and get the parameter segEgbThresholdI. This parameter is used in the second stage mentioned above. It is a constant used to threshold weights of the edge when merging adjacent nodes when applying EGB algorithm. The segmentation result tends to have more regions remained if this value is large and vice versa.
\item \code{setSegEgbThresholdII(c)}：: set and get the parameter segEgbThresholdII. This parameter is used in the third stage mentioned above. It serves the same purpose as segEgbThresholdI. The segmentation result tends to have more regions remained if this value is large and vice versa.
\item \code{setSlicSpixelSize(n)}：: set and get the parameter slicSpixelSize. This parameter is used in the first stage mentioned above(the SLIC stage). It describes the size of each superpixel when initializing SLIC. Every superpixel approximately has pixels in the beginning.
\item \code{setSpatialWeight(w)}：: set and get the parameter spatialWeight. This parameter is used in the first stage mentioned above(the SLIC stage). It describes how important is the role of position when calculating the distance between each pixel and it's center. The exact formula to calculate the distance is . The segmentation result tends to have more local consistency if this value is larger.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
