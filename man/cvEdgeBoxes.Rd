% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvEdgeBoxes}
\alias{cvEdgeBoxes}
\title{Class implementing EdgeBoxes algorithm from [324]}
\usage{cvEdgeBoxes(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvEdgeBoxes} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing EdgeBoxes algorithm from [324]}
\details{
C++ 类 \code{cv::ximgproc::EdgeBoxes} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edgeboxes.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvEdgeBoxes(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getAlpha()}：Returns the step size of sliding window search.
\item \code{getBeta()}：Returns the nms threshold for object proposals.
\item \code{getBoundingBoxes(edge_map, orientation_map, scores = NULL)}：Returns array containing proposal boxes.
\item \code{getClusterMinMag()}：Returns the cluster min magnitude.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getEdgeMergeThr()}：Returns the edge merge threshold.
\item \code{getEdgeMinMag()}：Returns the edge min magnitude.
\item \code{getEta()}：Returns adaptation rate for nms threshold.
\item \code{getGamma()}：Returns the affinity sensitivity.
\item \code{getKappa()}：Returns the scale sensitivity.
\item \code{getMaxAspectRatio()}：Returns the max aspect ratio of boxes.
\item \code{getMaxBoxes()}：Returns the max number of boxes to detect.
\item \code{getMinBoxArea()}：Returns the minimum area of boxes.
\item \code{getMinScore()}：Returns the min score of boxes to detect.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setAlpha(value)}：Sets the step size of sliding window search.
\item \code{setBeta(value)}：Sets the nms threshold for object proposals.
\item \code{setClusterMinMag(value)}：Sets the cluster min magnitude.
\item \code{setEdgeMergeThr(value)}：Sets the edge merge threshold.
\item \code{setEdgeMinMag(value)}：Sets the edge min magnitude.
\item \code{setEta(value)}：Sets the adaptation rate for nms threshold.
\item \code{setGamma(value)}：Sets the affinity sensitivity.
\item \code{setKappa(value)}：Sets the scale sensitivity.
\item \code{setMaxAspectRatio(value)}：Sets the max aspect ratio of boxes.
\item \code{setMaxBoxes(value)}：Sets max number of boxes to detect.
\item \code{setMinBoxArea(value)}：Sets the minimum area of boxes.
\item \code{setMinScore(value)}：Sets the min score of boxes to detect.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
