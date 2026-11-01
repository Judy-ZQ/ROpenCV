% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvHausdorffDistanceExtractor}
\alias{cvHausdorffDistanceExtractor}
\title{A simple Hausdorff distance measure between shapes defined by contours}
\usage{cvHausdorffDistanceExtractor(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvHausdorffDistanceExtractor} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{A simple Hausdorff distance measure between shapes defined by contours.}
\details{
according to the paper "Comparing Images using the Hausdorff distance." by D.P. Huttenlocher, G.A. Klanderman, and W.J. Rucklidge. (PAMI 1993). :
\strong{C++ 头文件：}\code{#include <opencv2/shape/shape_distance.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvHausdorffDistanceExtractor(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{computeDistance(contour1, contour2)}：Compute the shape distance between two shapes defined by its contours.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDistanceFlag()}
\item \code{getRankProportion()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setDistanceFlag(distanceFlag)}：Set the norm used to compute the Hausdorff value between two shapes. It can be L1 or L2 norm.
\item \code{setRankProportion(rankProportion)}：This method sets the rank proportion (or fractional value) that establish the Kth ranked value of the partial Hausdorff distance. Experimentally had been shown that 0.6 is a good value to compare shapes.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvShapeDistanceExtractor}}（\code{cv::ShapeDistanceExtractor}）}
\keyword{opencv}
